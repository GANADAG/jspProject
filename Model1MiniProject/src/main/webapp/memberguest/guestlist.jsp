<%@page import="data.dao.MemberDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="data.dto.GuestDto"%>
<%@page import="java.util.List"%>
<%@page import="data.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Single+Day&family=Stylish&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<title>Insert title here</title>
</head>
<body>
<%
   //로그인상태확인
   String loginok=(String)session.getAttribute("loginok");
   //id넣고 이름 불러오기
   MemberDao daoo=new MemberDao();
%>
<%
   if(loginok!=null){
      %>
      <jsp:include page="guestform.jsp"/>
      <hr width="700" align="left">
   <%}
%>
<%
   GuestDao dao=new GuestDao();

   //전체갯수
   int totalCount=dao.getTotalCount();
   int perPage=3; //한페이지당 보여질 글의 갯수
   int perBlock=5; //한블럭당 보여질 페이지 갯수
   int startNum; //db에서 가져올 글의 시작번호(mysql은 첫글이0번,오라클은 1번);
   int startPage; //각블럭당 보여질 시작페이지
   int endPage; //각블럭당 보여질 끝페이지
   int currentPage;  //현재페이지
   int totalPage; //총페이지수
   int no; //각페이지당 출력할 시작번호
   
   //현재페이지 읽는데 단 null일경우는 1페이지로 준다
   if(request.getParameter("currentPage")==null)
      currentPage=1;
   else
      currentPage=Integer.parseInt(request.getParameter("currentPage"));
   
   //총페이지수 구한다
   //총글갯수/한페이지당보여질갯수로 나눔(7/5=1)
   //나머지가 1이라도 있으면 무조건 1페이지 추가(1+1=2페이지가 필요)
   totalPage=totalCount/perPage+(totalCount%perPage==0?0:1);
   
   //각블럭당 보여질 시작페이지
   //perBlock=5일경우 현재페이지가 1~5일경우 시작페이지가1,끝페이지가 5
   //현재가 13일경우 시작:11 끝:15
   startPage=(currentPage-1)/perBlock*perBlock+1;
   endPage=startPage+perBlock-1;
   
   //총페이지가 23일경우 마지막블럭은 끝페이지가 25가 아니라 23
   if(endPage>totalPage)
      endPage=totalPage;
   
   //각페이지에서 보여질 시작번호
   //1페이지:0, 2페이지:5 3페이지: 10.....
   startNum=(currentPage-1)*perPage;
   
   //각페이지당 출력할 시작번호 구하기
   //총글개수가 23  , 1페이지:23 2페이지:18  3페이지:13
   no=totalCount-(currentPage-1)*perPage;

   //페이지에서 보여질 글만 가져오기
   List<GuestDto>list=dao.getList(startNum, perPage);

   SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
   //int count=list.size();

%>
<b>방명록 게시판@@@@</b>

<div style="margin: 50px 100px; width: 800px;">
  <h6><b>방명록 : <%=totalCount %>개</b></h6>
  <table class="table table-bordered">
    <tr class="table-light">
    <%
      if(totalCount==0)
      {%>
         <tr>
           <td colspan="5" align="center">
             <h6><b>등록된 방명록이 없습니다</b></h6>
           </td>
         </tr>
      <%}else{
         for(int i=0;i<list.size();i++)
         {
          
            GuestDto dto=list.get(i);
            String name=daoo.getName(dto.getMyid());
            %>
            
            <tr>
             <td align="center" style="width: 300px;"><%=name %>(<%=dto.getMyid()%>)</td>
             <td align="center" style="width: 300px; position: relative;">작성일: <%=sdf.format(dto.getWriteday()) %>
             <div class="btn" style="position: absolute; right: 0; top: 50%; transform:translateY(-50%);">
               <i class="bi bi-pencil-square" style="font-size: 20px; color: blue;"></i>
               <i class="bi bi-x-square" style="font-size: 20px; color: red;"></i>
               </div>
             </td> 
            </tr>
            <tr style="width: 200px; height: 200px; vertical-align: middle;" align="center">
                <td><%=dto.getContent().replace("\n", "<br>") %></td>
                <%
                  if(dto.getPhotoname()!=null){%>
                     <td><img src="save/<%=dto.getPhotoname() %>"></td>
                  <%} else{%>
                     <td><i class="bi bi-image" style="font-size: 30px;"></i>&nbsp;&nbsp;NoImage</td>
                   <%}
               %>
                
            </tr>
         <%}
      }
    %>
  </table>
  
  <!-- 페이지 번호 출력 -->
  <ul class="pagination justify-content-center">
  <%
  //이전
  if(startPage>1)
  {%>
     <li class="page-item ">
      <a class="page-link" href="index.jsp?main=memberguest/guestlist.jsp?currentPage=<%=startPage-1%>" style="color: black;">이전</a>
     </li>
  <%}
    for(int pp=startPage;pp<=endPage;pp++)
    {
       if(pp==currentPage)
       {%>
          <li class="page-item active">
          <a class="page-link" href="index.jsp?main=memberguest/guestlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
          </li>
       <%}else
       {%>
          <li class="page-item">
          <a class="page-link" href="index.jsp?main=memberguest/guestlist.jsp?currentPage=<%=pp%>"><%=pp %></a>
          </li>
       <%}
    }
    
    //다음
    if(endPage<totalPage)
    {%>
       <li class="page-item">
          <a  class="page-link" href="boardlist.jsp?currentPage=<%=endPage+1%>"
          style="color: black;">다음</a>
       </li>
    <%}
  %>

  </ul>

</div>
</body>
</html>