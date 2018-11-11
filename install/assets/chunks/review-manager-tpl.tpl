/**
 * review-manager-tpl
 *
 * шаблон Отзыва с модерацией (для менеджеров)
 *
 * @category	chunk
 * @internal @modx_category Отзывы
 */
<div class="jot-comment [+comment.published:is=`0`:then=`jot-hidden`+]">
	<a name="jc[+jot.link.id+][+comment.id+]"></a>
	<div class="jot-row [+chunk.rowclass+] ">
		<div class="jot-comment-entry ">

			<div class="jot-message">[+comment.content:wordwrap:esc:nl2br+]</div>
		</div>
		<div class="jot-comment-head ">
			<div class="jot-mod text-right">
				[+jot.user.canedit:is=`1`:and:if=`[+comment.createdby+]`:is=`[+jot.user.id+]`:or:if=`[+jot.moderation.enabled+]`:is=`1`:then=`
					<a class="jot-btn jot-btn-edit button tiny  alert" href="[+jot.link.edit:esc+][+jot.querykey.id+]=[+comment.id+]#jf[+jot.link.id+]" title="Изменить"><i class="jot-icon-edit"></i> Изменить</a>
				`:strip+]

					[+jot.moderation.enabled:is=`1`:then=`
						[+comment.published:is=`0`:then=`<a class=" alert button tiny jot-btn jot-btn-pub" href="[+jot.link.publish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]" title="Показать"><i class="jot-icon-pub"></i> Показать</a>`+]
						[+comment.published:is=`1`:then=`<a class=" alert button tiny jot-btn jot-btn-unpub" href="[+jot.link.unpublish:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]" title="Скрыть"><i class="jot-icon-unpub"></i> Скрыть</a>`+]
						<a class="jot-btn jot-btn-del button tiny alert " href="[+jot.link.delete:esc+][+jot.querykey.id+]=[+comment.id+]#jotmod[+jot.link.id+]" onclick="return confirm('Вы действительно хотите удалить это сообщение?')" title="Удалить"><i class="jot-icon-del"></i> Удалить</a>
					`:strip+]

			</div>

			
			<span class="jot-name">[+comment.username:ifempty=`[+comment.custom.name:ifempty=`[+jot.guestname+]`:esc+]`+] [+jot.moderation.enabled:is=`1`:then=`<span class="jot-extra"><a target="_blank" href="http://www.ripe.net/perl/whois?searchtext=[+comment.secip+]">([+comment.secip+])</a></span>`+]</span>
			<span class="jot-date">[+comment.createdon:date=`%d.%m.%Y в %H:%M`+]</span>
			<span class="jot-perma"><a rel="nofollow" title="Ссылка на комментарий" href="[+jot.link.current+]#jc[+jot.link.id+][+comment.id+]">#<!--[+comment.postnumber+]--></a></span>
		</div>
	</div>
</div>