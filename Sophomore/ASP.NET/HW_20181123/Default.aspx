<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;height:800px" border="1">
        <tr>

            <td  style="height:50%;width:40%" class="auto-style1" align="center">
                <img alt="" src="01.jpg" width="200" style="border: 0px; vertical-align: middle;" /></td>
            <td>

                <h1 id="firstHeading" class="firstHeading" lang="zh-TW" style="color: rgb(0, 0, 0); background: none; font-weight: 500; margin: 0px 0px 0.25em; overflow: visible; padding: 0px 0px 0px 0.25em; border-bottom: 2px solid rgb(0, 116, 249); font-size: 1.8em; line-height: 1.3; font-family: &quot;Helvetica Neue&quot;, &quot;Helvetica Arial&quot;, &quot;Microsoft Yahei&quot;, &quot;Hiragino Sans GB&quot;, &quot;Heiti SC&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">闡釋者</h1>

                <pre style="font-family: monospace, monospace; color: rgb(0, 0, 0); background-color: rgb(248, 249, 250); border: 1px solid rgb(234, 236, 240); padding: 1em; white-space: pre-wrap; line-height: 1.3em; word-wrap: break-word; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">簡介
闡釋者是桐子後期的主要武器，作為單手劍技能時的主劍，雙手劍技能時與另一把白色的劍逐暗者一同使用。屬相當然是刀劍中的極品。利茲貝特鑑定為魔劍級別的神裝。

圖片信息
範圍（range）：short
劍種類（type）：slash
攻擊（attack）：700-710
耐久（durability）：1350
重量（weight）：170
裝備要求（requires）：61
裝備容量（equip）：+50
力量（streagth）：+48
敏捷（agility）：+28</pre>
            </td>
        </tr>
        <tr>
            <td colspan="2" valign="top" >
                <asp:Button ID="Button1" runat="server" Text="商品訊息" OnClick="Button1_Click" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" />
                <asp:Button ID="Button2" runat="server" Text="評論" OnClick="Button2_Click" Font-Bold="True" Font-Names="微軟正黑體" Font-Size="Large" Font-Strikeout="False" />
                <br />
                <asp:Panel ID="Panel2" runat="server" >
                    <table border="1" cellpadding="2" cellspacing="0" style="font-size: 12.6px; color: rgb(34, 34, 34); font-family: BlinkMacSystemFont, -apple-system, &quot;Helvetica Neue&quot;, Tahoma, Arial, &quot;PingFang SC&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Microsoft JhengHei&quot;, 微軟正黑體, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; width: 260px; margin: 0px 0px 1em 1em; background: rgb(249, 249, 249); border: 1px solid rgb(153, 153, 153); border-collapse: collapse; clear: right;">
                        <tr>
                            <td align="center" colspan="2"><a class="image" href="https://zh.moegirl.org/File:Chanshizhe01.JPG" style="text-decoration: none; color: rgb(11, 0, 128); background: none;">
                                <img alt="Chanshizhe01.JPG" data-file-height="1080" data-file-width="1920" height="141" src="Chanshizhe01.JPG" srcset="https://img.moegirl.org/common/thumb/2/20/Chanshizhe01.JPG/375px-Chanshizhe01.JPG 1.5x, https://img.moegirl.org/common/thumb/2/20/Chanshizhe01.JPG/500px-Chanshizhe01.JPG 2x" style="border: 0px; vertical-align: middle;" width="250" />
                                </a></td>
                        </tr>
                        <tr>
                            <td align="center" bgcolor="#E0FFFF" colspan="2"><b>基本資料</b></td>
                        </tr>
                        <tr>
                            <th width="80px">神器名稱</th>
                            <td align="center">Elucidator (闡釋者)</td>
                        </tr>
                        <tr>
                            <th>神器別名</th>
                            <td align="center"><span lang="ja" style="font-family: BlinkMacSystemFont, -apple-system, &quot;Helvetica Neue&quot;, Tahoma, Arial, &quot;ヒラギノ角ゴ Pro W3&quot;, &quot;Hiragino Kaku Gothic Pro&quot;, Osaka, メイリオ, Meiryo, &quot;ＭＳ Ｐゴシック&quot;, &quot;MS PGothic&quot;, sans-serif; font-feature-settings: &quot;locl&quot;;">解明剣</span></td>
                        </tr>
                        <tr>
                            <th>神器種類</th>
                            <td align="center">劍</td>
                        </tr>
                        <tr>
                            <th>神器主人</th>
                            <td align="center"><a href="https://zh.moegirl.org/桐子" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="桐子">桐子</a></td>
                        </tr>
                        <tr>
                            <th>登場作品</th>
                            <td align="center">《<a href="https://zh.moegirl.org/刀剑神域" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="刀劍神域">刀劍神域</a>》</td>
                        </tr>
                    </table>
                </asp:Panel>
                <asp:Panel ID="Panel1" runat="server" BackColor="Black">
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">pablito61337</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 槍彈辯駁 有槍彈 沒辯駁</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:41 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">reader2714</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 奇諾那個梗我當年看到就超喜歡的XDDDD</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:42 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">wsx89589468</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 依微小的記憶奇諾裡面的槍都叫說服者</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:42 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="f1 hl push-tag" style="color: rgb(255, 102, 102); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">→ </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">reader2714</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 是阿 手槍就是掌中說服者</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:44 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">frank00427</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 奇諾都會拿來說服別人他是女生</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:52 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">openbestbook</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 人生重來槍?</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:56 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">lrk952</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 奇諾不是有把名為左輪的說服者，而是那世界觀裡槍較說服者</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:57 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="f1 hl push-tag" style="color: rgb(255, 102, 102); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">→ </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">lrk952</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 吧。印象中奇諾的說服者名字是&quot;長笛&quot;、&quot;森之人&quot;</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 22:58 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">BalaBalaDaBa</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 說服敵人繳械投降的概念(?)</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 23:16 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">libramog</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 非戰特攻隊 伍長的敲門者?</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 23:20 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="f1 hl push-tag" style="color: rgb(255, 102, 102); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">→ </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">winger</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 和平製造者</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 23:40 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">felix1031</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 逃學威龍長官的善良之槍算嗎？</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/19 23:54 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="f1 hl push-tag" style="color: rgb(255, 102, 102); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">→ </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">pietoro00</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 卡農</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/20 04:12 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">z101924512</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 奇諾世界沒有槍這名詞，只有說服者</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/20 09:50 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="f1 hl push-tag" style="color: rgb(255, 102, 102); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">→ </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">SCLPAL</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 真的很棒阿 很有說服力</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/20 10:32 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="f1 hl push-tag" style="color: rgb(255, 102, 102); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">→ </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">SCLPAL</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 現實武器被叫的敲門 倒是真的只能敲門QwQ</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/20 10:33 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">angeal8211</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 說服（物理</span><span class="push-ipdatetime" style="float: right; white-space: pre-wrap;"> 04/20 14:03 </span>
                    </div>
                    <div class="push" style="line-height: 31.2px; white-space: normal; clear: both; position: relative; color: rgb(187, 187, 187); font-family: 細明體, &quot;AR PL UMing TW&quot;, Inconsolata, LiSongPro, monospace; font-size: 24px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                        <span class="hl push-tag" style="color: rgb(255, 255, 255); display: inline-block; min-width: 3.5ex; white-space: pre-wrap;">推 </span><span class="f3 hl push-userid" style="color: rgb(255, 255, 102); white-space: pre-wrap;">symetyr</span><span class="f3 push-content" style="color: rgb(153, 153, 0); white-space: pre-wrap;">: 聽過和平締造者嗎，有款轟炸機和手槍都有這種外號</span></div>
                    <br />
                </asp:Panel>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
