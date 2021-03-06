${ include("header", conn=conn) }$

${ memo = conn.memoserv.read(id) }$

<div style="width: 20%; margin-left: 0.5em; float: right;">

<div class="boxhead">
<h2>Actions</h2>
</div>

<div style="text-align: center;" class="boxbody">
<div><a href="delete?id=${ emit(id) }$">Delete</a></div>
<div><a href="write?to=${ emit(memo['from']) }$">Reply</a></div>
<div><a href="forward?id=${ emit(id) }$">Forward</a></div>
<div><a href="ignore_add_commit?account=${ emit(memo['from']) }$">Ignore User</a></div>
</div>

</div>

<div style="width: 79%; margin-right: 0.5em;">
<div class="boxhead">
<h2>Memo #${ emit(id) }$</h2>
</div>
<div class="boxbody">

<table width="100%">

<tr id="data">
<th>From</th>
<td>${ emit(memo['from']) }$</th>
</tr>

<tr id="data">
<th>Sent On</th>
<td>${ emit(memo['sent']) }$</th>
</tr>

<tr id="data">
<th>Memo Text</th>
<td>${ emit(memo['message']) }$</th>
</tr>

</table>

</div>

</div>

${ include("memolistbase", conn=conn) }$

${ include("footer") }$
