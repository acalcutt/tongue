<?php
/**
 * Created by PhpStorm.
 * User: sysferland
 * Date: 12/27/13
 * Time: 10:03 PM
 */
require "init.php";
$res = $conn->query("SELECT `feed`, `feed_server` FROM `tongue`.`feeds` WHERE `in_use` != 1 LIMIT 1\r\n");
$feeds = $res->fetch(2);

$feed = $feeds['feed'];
$exp = explode(".", $feed);
$len = strlen($exp[0]);
$int = (int)$exp[0][$len-1];
$feed_server = $feeds['feed_server'];
$video_id = $_GET['video'];
$table = $_GET['table'];
$seek = "00:00:00";
$res = $conn->prepare("INSERT INTO `tongue`.`waiting` (`video_id`, `table`, `feed`, `feed_server`, `seek`) VALUES(?, ?, ?, ?, ?)");
echo "INSERT INTO `tongue`.`waiting` (`video_id`, `table`, `feed`, `feed_server`, `seek`) VALUES($video_id, $table, $feed, $feed_server, $seek)";

$res->bindParam(1, $video_id, PDO::PARAM_INT);
$res->bindParam(2, $table, PDO::PARAM_STR);
$res->bindParam(3, $feed, PDO::PARAM_STR);
$res->bindParam(4, $feed_server, PDO::PARAM_STR);
$res->bindParam(5, $seek, PDO::PARAM_STR);
$res->execute();

sleep(1);
$stream_source = "//".$feed_server."/stream".$int.".webm";
$smarty->assign("stream_source", $stream_source);
$smarty->display("html5_360_stream_player.tpl");
