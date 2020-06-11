<div class="container">
    <div class="jumbotron">
        <div class="row">
            <div class="col-md-4 col-xs-12 col-sm-6 col-lg-4">
                <img src="images/default_pic.png" alt="stack photo" class="img">
            </div>
            <div class="col-md-8 col-xs-12 col-sm-6 col-lg-8">
                <div class="container" style="border-bottom:1px solid black">
                    <h2><?php echo $fname.' '.$lname.' ( Mentor:'.$mentor.')'; ?></h2>
                </div>
                <hr>
                <ul class="container details">
                    <li><p><span class="glyphicon glyphicon-ok-sign" style="width:50px;"></span><?php echo $sid.' ( PID:'.$pid.')'; ?></p></li>
                    <li><p><span class="glyphicon glyphicon-earphone one" style="width:50px;"></span><?php echo '+91 '.$mobile; ?></p></li>
                    <li><p><span class="glyphicon glyphicon-envelope one" style="width:50px;"></span><?php echo $email; ?></p></li>
                    <li><p><span class="glyphicon glyphicon-map-marker one" style="width:50px;"></span><?php echo ucfirst($center).'('.strtoupper($course).')' ?></p></li>
                    <li><p><span class="glyphicon glyphicon-tower" style="width:50px;"></span><?php echo $batch.' ('.strtoupper($timing).')'; ?></p></li>
                </ul>
            </div>
        </div>
    </div>
    <div align="center">
        <p><b><i>Address:</i></b><?php echo $address.', '. $city.', '.$state.', '.$postal_code ?></p>
        <p><b><i>Total Fee:</i></b><?php echo $fees; ?> &nbsp; &nbsp; <b><i>Scholarship:</i></b><?php echo $scholarship.'%' ?> &nbsp;&nbsp;<b><i>Total Fee To Pay:</i></b><?php $newfee = $fees-($fees*$scholarship)/100; echo $newfee ?> &nbsp; &nbsp; <b><i>Total Paid Fees:</i></b><?php echo $paid_fees; ?> &nbsp;&nbsp; <b><i>Fees To Pay:</i></b><?php echo $newfee-$paid_fees;  ?> &nbsp; &nbsp;&nbsp;<a href="fees.php"><button>Pay</button></a></p>
        <p><b><i>Class: </i></b><?php echo $class; ?> &nbsp; &nbsp; <?php if(isset($mark10)){echo '<b><i>Class 10 Marks: </i></b>'.$mark10; } ?> &nbsp;&nbsp; <?php if(isset($mark12)){echo '<b><i>Class 12 Marks:</i></b>'.$mark12; } ?>&nbsp</p>
        <p><b><i>Previous Exam Attempted: </i></b><?php echo $pre_exam.' ( '.$pre_exam_year.')'; ?> &nbsp;&nbsp; <b><i>Previous Exam Marks: </i></b><?php echo $pre_exam_marks; ?></p>
        <p><b><i>Father's Name: </i></b><?php echo ucfirst($fathername); ?> &nbsp;&nbsp; <b><i>Father's Occupation: </i></b><?php echo ucfirst($fatheroccu); ?> &nbsp;&nbsp; <b><i>Father's Mobile:</i></b> <?php echo '+91 '.$fathermob; ?></p>
        <p><b><i>Mother's Name: </i></b><?php echo ucfirst($mothername); ?> &nbsp;&nbsp; <b><i>Mother's Occupation: </i></b><?php echo ucfirst($motheroccu); ?> &nbsp;&nbsp; <b><i>Mother's Mobile:</i></b> <?php echo '+91 '.$mothermob; ?></p>
        <p><button onclick="showsome()">Update Details</button></p>
    </div>