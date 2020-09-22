
<?php
include_once("./framework/function.php");

include_once("./framework/pollAddEditFunction.php");


GetHeaderWithNav("Poll Add/Edit");

$errorMessage="";
$isError=false;
$isSave=false;

$id=0;
if(isset($_GET['id']) && $_GET['id']>0){
  $id=$_GET['id'];

}



?>

<div ng-controller="PollAddEditCtrl"   ng-init="Init()" >


<div class="row">
  
  <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-bottom: 10px;">
    <div class="border-box">
      <h2>Poll Manager</h2>
    </div>
  </div>
  
</div>


<div class="alert alert-danger" style="display: <?php echo ($isError? 'block':'none'); ?>;">
            <strong>Error!</strong> <?php echo $errorMessage?>
</div>

<div class="alert alert-success" style="display: <?php echo ($isSave? 'block':'none'); ?>;">
            <strong>Message:</strong> Successfully Save Data.
</div>

<div class="row">  
   
   <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
     <div class="border-box">
       <h4 style="text-align: center; font-weight: 500;">Poll List</h4>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <th>SN</th>
            <th>Name</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <tr  ng-repeat="row in pollList">
            <td>{{$index+1}}</td>
            <td>{{row.Name}}</td>
            <td style="text-align: center; width: 110px;">
              
              <button type="button" ng-click="EditPoll(row)" class="btn btn-xs btn-info">Edit</button>
              
              <button type="button" class="btn btn-xs  btn-danger">Delete</button>
              
            </td>
          </tr>
        </tbody>
      </table>
     </div>
   </div>
   
      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6" style="padding-bottom: 20px; border-radius: 5px;">     
      <div class="border-box">

        <h4 style="text-align: center; font-weight: 500;">Poll Add/Edit</h4>
        <div style="text-align: right;">
          <button ng-click="GetPollById(0)" class="btn btn-xs btn-primary">Add New</button>
        </div>
        <div class="form-group">
            <label for="Name">Name:</label>
              <input type="text" ng-model="SelectedPoll.Name"  class="form-control">
        </div>
        <label for="Name">Options:</label>
        
        <button ng-click="AddOption()" type="button" class="btn btn-xs btn-info" style="float: right;">Add Option</button>
        
           <div>
           <table class="table ">
             <tbody>
               <tr ng-repeat="row in SelectedPoll.OptionList">
                  <td>
                  <div class="radio">
                    <label>
                    <input type="radio" name="" id="input" value="">
                    <input type="text" ng-model="row.Name" style="height: 24px;"  class="form-control">
                    </label>
                  </div>
                  </td>
               </tr>
             </tbody>
           </table>
           
           </div>


            <div style="text-align: center;">
              <button ng-click="SavePoll()" class="btn btn-default btn-success">Save</button>
            </div>
      </div>
          

      </div>    
    </div>    


</div>




  
  <?php GetFooterWithNav("PollAddEdit.js"); ?>
