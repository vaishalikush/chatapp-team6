<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<%@ page import="java.util.List" %>
<%@ page import="codeu.model.data.Conversation" %>
<%@ page import="codeu.model.data.Message" %>
<%@ page import="codeu.model.store.basic.UserStore" %>
<%@ page import="codeu.model.store.basic.ConversationStore" %>
<%@ page import="codeu.model.data.Activity" %>
<%
//Conversation conversation = (Conversation) request.getAttribute("conversation");
//List<Message> messages = (List<Message>) request.getAttribute("messages");
List<Activity> activity = (List<Activity>) request.getAttribute("activity");
%>


<!DOCTYPE html>
<html>

<head>
  <title>Activity</title>
  <link rel="stylesheet" href="/css/main.css">

  <style>
    #chat {
      background-color: white;
      height: 500px;
      overflow-y: scroll
    }
  </style>

  <script>
    // scroll the chat div to the bottom
    function scrollChat() {
      var chatDiv = document.getElementById('chat');
      chatDiv.scrollTop = chatDiv.scrollHeight;
    };
  </script>

</head>


<body onload="scrollChat()">

  <%@ include file="/nav.jsp" %>

  <div id="container">

    <h1>Activity</h1>
    <p>Here's whats happening on the site!</p>

    <div id="chat">
      <ul>
        <%
          for (Activity act : activity) {

            String output = act.getOutput();
        %>
            <li><%= output %></li>
        <%
          }
        %>
      </ul>
    </div>

  </div>

</body>

</html>
