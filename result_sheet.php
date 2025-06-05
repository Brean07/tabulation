<!DOCTYPE html>
<html lang="en">
<?php
include('header2.php');
include('session.php');
$active_sub_event = $_GET['event_id'];
?>

<style type="text/css">
@media print {
    footer {
        page-break-after: always;
    }
}
</style>

<body data-spy="scroll" data-target=".bs-docs-sidebar">
<div class="container">
    <div class="row">
        <div class="span12">
            <?php
            $s_event_query = $conn->query("SELECT * FROM sub_event WHERE subevent_id='$active_sub_event'") or die(mysql_error());
            while ($s_event_row = $s_event_query->fetch()) {
                $MEidxx = $s_event_row['mainevent_id'];
                $event_query = $conn->query("SELECT * FROM main_event WHERE mainevent_id='$MEidxx'") or die(mysql_error());
                while ($event_row = $event_query->fetch()) {
            ?>
            <center>
                <?php include('doc_header.php'); ?>
                <table>
                    <tr>
                        <td align="center">
                            <font size="4"><?php echo $event_row['event_name']; ?></font>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <font size="3"><?php echo $s_event_row['event_name']; ?></font>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <font size="4">Overall Results</font>
                        </td>
                    </tr>
                </table>
            </center>
            <br />

            <table class="table table-bordered">
                <thead>
                    <th>Participants</th>
                    <th>Placing</th>
                    <th>Result Summary</th>
                </thead>
                <tbody>
                    <?php
                    $contestants_scores = array();

                    $o_result_query = $conn->query("SELECT DISTINCT contestant_id FROM sub_results WHERE mainevent_id='$MEidxx' AND subevent_id='$active_sub_event' ORDER BY total_score DESC") or die(mysql_error());
                    while ($o_result_row = $o_result_query->fetch()) {
                        $contestant_id = $o_result_row['contestant_id'];

                        $total_score = 0;
                        $total_deductions = 0;
                        $num_judges = 0;

                        $tot_score_query = $conn->query("SELECT total_score, deduction FROM sub_results WHERE contestant_id='$contestant_id'") or die(mysql_error());
                        while ($tot_score_row = $tot_score_query->fetch()) {
                            $num_judges++;
                            $total_score += $tot_score_row['total_score'];
                            $total_deductions += $tot_score_row['deduction'];
                        }

                        $average_score = ($num_judges > 0) ? ($total_score - $total_deductions) / $num_judges : 0;
                        $contestants_scores[] = array('contestant_id' => $contestant_id, 'average_score' => $average_score);
                    }

                    usort($contestants_scores, function($a, $b) {
                        return $b['average_score'] <=> $a['average_score'];
                    });

                    $placing = 1;
                    foreach ($contestants_scores as $contestant) {
                        $contestant_id = $contestant['contestant_id'];
                        $average_score = $contestant['average_score'];
                    ?>
                    <tr>
                        <td>
                            <h3>
                                <?php
                                $cname_query = $conn->query("SELECT * FROM contestants WHERE contestant_id='$contestant_id'") or die(mysql_error());
                                while ($cname_row = $cname_query->fetch()) {
                                    echo $cname_row['contestant_ctr'] . ". " . $cname_row['fullname'];
                                }
                                ?>
                            </h3>
                        </td>
                        <td>
                            <center>
                                <h3><?php echo $placing++; ?></h3>
                            </center>
                        </td>
                        <td>
                            <table class="table table-bordered">
                                <tr>
                                    <th>Average Score in All Judges</th>
                                    <th>Sum of Rank in All Judges</th>
                                </tr>
                                <?php
                                $total_ranks = 0;
                                $tot_score_query = $conn->query("SELECT rank FROM sub_results WHERE contestant_id='$contestant_id'") or die(mysql_error());
                                while ($tot_score_row = $tot_score_query->fetch()) {
                                    $total_ranks += $tot_score_row['rank'];
                                }
                                ?>
                                <tr>
                                    <td bgcolor="#C5EAF9"><b>Ave: <?php echo round($average_score, 1); ?></b></td>
                                    <td bgcolor="#DFF2FA"><b>Sum: <?php echo $total_ranks; ?></b></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
            <?php } } ?>
        </div>
    </div>
</div>

<script src="assets/js/jquery.js"></script>
<script src="assets/js/bootstrap.js"></script>

<script type="text/javascript">
    window.print();
</script>

</body>
</html>
