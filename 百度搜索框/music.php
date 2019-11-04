<?php
     header("Content-type:text/html;charset=utf-8");
    //1、接收前端的数据
    $query = $_GET['key'];

    //2、查询数据库
    $conn = mysql_connect("localhost","root","root");

    if(!$conn){
        echo("数据库出错".mysql_error());
    }else{
        //2)、选择库（选择目的地）
        mysql_select_db("mydb1908",$conn);

        //3)、执行SQL语句（数据传输）
        //3.1)
        $sqlstr="select * from music where name like '%$query%'";
        // echo $sqlstr;
        $result = mysql_query($sqlstr,$conn);
        $rows = mysql_num_rows($result);//获得结果的行数
        
        if($rows>0){
            mysql_close($conn);
            
            $str = '{ "msg":"success",';
            $str .= '"datas":[';
            $row = mysql_fetch_array($result);//拿出下一行
            while($row){
                $str = $str.'"'.$row[1].'"';
                $row = mysql_fetch_array($result);//拿出下一行
                if($row){
                    $str=$str.",";
                }
            }
            $str .= ']}';
            echo $str;//登录成功
        }else{
            echo '{"msg":"fail"}';
        }
    }
?>