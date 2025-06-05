<?php
include('header2.php');
include('session.php');

$active_main_event = $_GET['main_event_id'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <style style="text/css">
        @media print {
            footer {
                page-break-after: always;
            }
        }
    </style>
</head>

<body data-spy="scroll" data-target=".bs-docs-sidebar">
    <div class="container">
        <div class="row">
            <div class="span12">
                <?php
                // Fetch the main event details
                $event_query = $conn->query("SELECT * FROM main_event WHERE mainevent_id='$active_main_event'") or die(mysql_error());
                while ($event_row = $event_query->fetch()) {
                    // Fetch sub-events for the main event
                    $s_event_query = $conn->query("SELECT * FROM sub_event WHERE mainevent_id='$active_main_event'") or die(mysql_error());
                    while ($s_event_row = $s_event_query->fetch()) {
                        $active_sub_event = $s_event_row['subevent_id'];
                ?>
                        <center>
                            <?php include('doc_header.php'); ?>
                            <table>
                                <tr>
                                    <td align="center">
                                        <h2><?php echo $event_row['event_name']; ?> - Overall Result</h2>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <h3><?php echo $s_event_row['event_name']; ?></h3>
                                    </td>
                                </tr>
                            </table>
                        </center>

                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Participants</th>
                                    <th>Result Summary</th>
                                    <th>Placing</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $o_result_query = $conn->query("SELECT DISTINCT contestant_id FROM sub_results WHERE mainevent_id='$active_main_event' AND subevent_id='$active_sub_event' ORDER BY place_title ASC") or die(mysql_error());
                                while ($o_result_row = $o_result_query->fetch()) {
                                    $contestant_id = $o_result_row['contestant_id'];
                                ?>
                                    <tr>
                                        <td>
                                            <?php
                                            $cname_query = $conn->query("SELECT * FROM contestants WHERE contestant_id='$contestant_id'") or die(mysql_error());
                                            while ($cname_row = $cname_query->fetch()) {
                                                echo $cname_row['contestant_ctr'] . "." . $cname_row['fullname'];
                                            }
                                            ?>
                                        </td>
                                        <td>
                                            <table class="table table-bordered">
                                                <tr>
                                                    <th>Average Score</th>
                                                    <th>Sum of Rank in all Judges</th>
                                                </tr>
                                                <?php
                                                $divz = 0;
                                                $totx_score = 0;
                                                $rank_score = 0;

                                                $tot_score_query = $conn->query("SELECT * FROM sub_results WHERE contestant_id='$contestant_id'") or die(mysql_error());
                                                while ($tot_score_row = $tot_score_query->fetch()) {
                                                    $divz++;
                                                    $place_title = $tot_score_row['place_title'];
                                                }

                                                $tot_score_query = $conn->query("SELECT judge_id, total_score, deduction, rank FROM sub_results WHERE contestant_id='$contestant_id'") or die(mysql_error());
                                                while ($tot_score_row = $tot_score_query->fetch()) {
                                                    $totx_score += $tot_score_row['total_score'];
                                                    $rank_score += $tot_score_row['rank'];
                                                    $totx_deduct = $tot_score_row['deduction'];
                                                }
                                                ?>
                                                <tr>
                                                    <td><b>Ave: <?php echo round(($totx_score - $totx_deduct) / $divz, 1); ?></b></td>
                                                    <td><b>Sum: <?php echo $rank_score; ?></b></td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>
                                            <center><h3><?php echo $place_title; ?></h3></center>
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>

                        <hr />
                        <br />

                        <table align="center">
                            <tr>
                                <?php
                                $jjn_result_query = $conn->query("SELECT DISTINCT judge_id FROM sub_results WHERE mainevent_id='$active_main_event' AND subevent_id='$active_sub_event' ORDER BY judge_id ASC") or die(mysql_error());
                                while ($jjn_result_row = $jjn_result_query->fetch()) {
                                    $jx_id = $jjn_result_row['judge_id'];
                                    $jname_query = $conn->query("SELECT * FROM judges WHERE judge_id='$jx_id'") or die(mysql_error());
                                    $jname_row = $jname_query->fetch();
                                ?>
                                    <td>
                                        <table>
                                            <tr>
                                                <td align="center"><u><strong><?php echo $jname_row['fullname']; ?></strong></u></td>
                                            </tr>
                                            <tr>
                                                <td align="center"><?php echo $jname_row['jtype']; ?> Judge</td>
                                            </tr>
                                        </table>
                                    </td>
                                <?php } ?>
                            </tr>
                        </table>
                        <footer></footer>
                <?php
                    }
                }
                ?>
                <center><h1>Organizing Committee</h1></center>
                <hr />
                <!-- Organizer Details -->
            </div>
        </div>
    </div>

    <?php include('footer.php'); ?>
</body>

</html>
