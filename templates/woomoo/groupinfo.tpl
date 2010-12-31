${ include("header", conn=conn) }$

${

from urllib import quote_plus
group_info = conn.groupserv.get_group_info(group)

}$

<div style="width: 20%; margin-left: 0.5em; float: right;">

<div class="boxhead">
	<h2>Information about ${ emit(channel) }$</h2>
</div>
<div class="boxbody">
	<table width="100%">

${
for k in group_info.keys():
    emit("<tr><th>%s</th><td>%s</td></tr>" % (k, group_info[k]))
}$

	</table>

<div style='text-align: center'><a href='settings?group=${ emit(quote_plus(group)) }$'>edit settings</a></div>
</div>

</div>

${ access_list = conn.group.get_access_list(group) }$

<div style="width: 79%; margin-right: 0.5em;">

<div class="boxhead">
	<h2>Access List for ${ emit(group) }$</h2>
</div>
<div class="boxbody">
<table width="100%">

<tr>
	<th>Entry</th>
	<th>Nickname / Hostmask</th>
	<th>Access Flags</th>
	<th>Options</th>
</tr>
	${
	    for chan in access_list:
                group['channelurl'] = quote_plus(group)
                emit("<tr><td>%(id)s</td><td>%(nick)s</td><td>%(flags)s</td><td><a href='edit_flags?group=%(channelurl)s&nick=%(nick)s'>edit flags</a> - <a href='remove_flags?group=%(channelurl)s&nick=%(nick)s'>remove flags</a></td></tr>" % chan)
	}$

</table>

</div>

</div>

${ include("footer") }$
