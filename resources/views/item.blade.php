<div class="hpanel hred hbgnavyblue ">
    <div class="panel-body" style="padding: 10px;">
        <div class="row">
            <div class="col-md-7">
               <h5> <i class="fa fa-tasks" aria-hidden="true"></i> Title: {{ $model->taskname }}</h5>
            </div>
            <div class="col-md-5">
                <div class="float-e-margins pull-right">
                    <button type="button" class="btn btn-xs btn-success edit-item" id="edit-{{ $model->id }}"><i class="fa fa-pencil"></i> </button>
                    <button type="button" class="btn btn-xs btn-danger2 delete-item" id="delete-{{ $model->id }}"><i class="fa fa-trash-o "></i> </button>
                    <button type="button" class="btn btn-xs btn-primary2 audit-item" id="audit-{{ $model->id }}"><i class="fa fa-history "></i> </button>
                </div>
            </div>
        </div>
    </div>
</div>
