<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">
    {ERROR}
</div>
<!-- END: error -->

<script type="text/javascript">var pro_del_cofirm = "{LANG.product_del_cofirm}";</script>
<link rel="stylesheet" type="text/css" href="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.css">

<div class="well">
    <form class="form-inline" action="{FORM_ACTION}" method="get">
        <input type="hidden" name ='nv' value={MODULE_NAME}>
        <input type="hidden" name ='op' value={OP}>
        <input type="hidden" name ='receipt_sentid' value="{receipt_sentid}">
        {LANG.dis} &nbsp;&nbsp;
        <select class="form-control" name="type">
            <!-- BEGIN: typeid -->
            <option value="{LISTTYPES.id}"{LISTTYPES.selected}>{LISTTYPES.name}</option>
            <!-- END: typeid -->
        </select>
        {LANG.from}
        <input class="form-control" value="{FROM}" type="text" id="from" name="from" readonly="readonly" />
        {LANG.to}
        <input class="form-control" value="{TO}" type="text" id="to" name="to" readonly="readonly" />
        <input class="btn btn-primary" type="submit" value="{GLANG.search}" name="timkiem">
    </form>
</div>

<div class="collapse navbar-collapse" id="menu-site-default">
        <ul class="nav navbar-nav">
            <li class="active" role="presentation"><a class="dropdown-toggle" href="{NV_BASE_ADMINURL}index.php?language=vi&nv=dispatch&receipt_sentid=0" role="button" aria-expanded="false" rel="Quản Lý Công Văn Đến">  Quản Lý Công Văn Đến</a> </li>
            <li role="presentation"><a class="dropdown-toggle" href="{NV_BASE_ADMINURL}index.php?language=vi&nv=dispatch&receipt_sentid=1" role="button" aria-expanded="false" title="Quản Lý Công Văn Đi">  Quản Lý Công Văn Đi</a> </li>
        </ul>
</div>
    
<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover">
        <caption>{TABLE_CAPTION}</caption>
        <colgroup>
            <col class="w50" />
            <col class="w250" />
            <col span="4" />
            <col class="w100" />
            <col class="w100" />
            <col class="w150" />
        </colgroup>
        <thead>
            <tr>
                <th class="text-center"> {LANG.stt} </th>
                <th> {LANG.dis_name} </th>
                <th> {LANG.dis_code} </th>
                <th> {LANG.dis} </th>
                <th> {LANG.cat_parent} </th>
                <th> {LANG.dis_person} </th>
                <th class="text-center"> {LANG.dis_date_re} </th>
                <th class="text-center"> {LANG.detail} </th>
                <th class="text-center"> {LANG.feature} </th>

            </tr>
        </thead>
        <tbody>
            <!-- BEGIN: row -->
            <tr>
                <td class="text-center"> {ROW.stt} </td>
                <td> {ROW.title0} </td>
                <td> {ROW.code} </td>
                <td><a href="{ROW.link_type}">{ROW.type}</a></td>
                <td><a href="{ROW.link_cat}">{ROW.cat}</a></td>
                <td><a href="{ROW.link_singer}">{ROW.from_signer}</a></td>
                <td class="text-center"> {ROW.from_time} </td>
                <td class="text-center"><a href="{ROW.link_detail}" target="_blank"><em class="fa fa-search fa-lg">&nbsp;</em></a></td>
                <td class="text-center">
                    <em class="fa fa-edit fa-lg">&nbsp;</em><a href="{EDIT_URL}">{GLANG.edit}</a> &nbsp;&nbsp; -
                    <em class="fa fa-trash-o fa-lg">&nbsp;</em><a href="javascript:void(0);" onclick="nv_pro_del({ROW.id});">{GLANG.delete}</a>
                </td>

            </tr>
            <!-- END: row -->
        <tbody>
        <!-- BEGIN: generate_page -->
        <tfoot>
            <tr>
                <td colspan="9"> {GENERATE_PAGE} </td>
            </tr>
        </tfoot>
        <!-- END: generate_page -->
    </table>
</div>

<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/jquery.ui.datepicker-{NV_LANG_INTERFACE}.js"></script>
<script type="text/javascript">
$(function() {
    $("#from,#to").datepicker({
        showOn : "both",
        dateFormat : "dd.mm.yy",
        changeMonth : true,
        changeYear : true,
        showOtherMonths : true,
        buttonImage : nv_base_siteurl + "assets/images/calendar.gif",
        buttonImageOnly : true
    });
});
</script>
<!-- END: main -->