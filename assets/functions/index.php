<?php
include_once "conn.php";

if (isset($_POST["fetchCadidates"])) {
    $sql = "Select * from presidentlist";
    $res = selectData($sql);
    echo $res;
} elseif (isset($_POST["cadidateId"])) {
    if (!isset($_COOKIE["visitorId"])) {
        $key = uniqid() . "-" . uniqid() . "-" . $_SERVER['REMOTE_ADDR'];
        $key = md5($key);
        $id = addslashes($_POST["cadidateId"]);
        $sql = "update presidentlist set `votes`=votes+1 where id='$id'";
        $res = queryData($sql);
        if ($res == "success") {
            setcookie("visitorId", $key, time() + (604800 * 30), "/");
            echo $res;
        } else {
            echo "error";
        }
    } else {
        echo "voted";
    }
} else {
    echo "asa else";
}
