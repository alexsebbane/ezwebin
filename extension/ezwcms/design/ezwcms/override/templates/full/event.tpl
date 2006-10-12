{set-block scope=root variable=cache_ttl}600{/set-block}
{* Event - Full view *}

{include uri='design:parts/editor_toolbar.tpl'}

<div class="box-mc">
<div class="tl"><div class="tr"><div class="br"><div class="bl"><div class="box-content float-break">

<div class="content-view-full">
    <div class="class-event">
	
	<div class="attribute-header">
		<h1>{$node.name|wash()}</h1>
	</div>
	
	<div class="attribute-byline">
	<p class="ezagenda_date">

	{"Category"|i18n("design/standard/ezagenda")}:
	{$node.data_map.category.class_content.options[$node.data_map.category.value[0]].name}<br />
	{$node.object.data_map.from_time.content.timestamp|datetime(custom,"%j %M %H:%i")}
	{if $node.object.data_map.to_time.has_content}
		  - {$node.object.data_map.to_time.content.timestamp|datetime(custom,"%j %M %H:%i")}
	{/if}
	</p>
	</div>

	{if $node.object.data_map.image.content}
         <div class="attribute-image">
             {attribute_view_gui attribute=$node.object.data_map.image align=center image_class=imagelarge}
        </div>
    {/if}

	{if $node.object.data_map.text.has_content}
    	<div class="attribute-short">{attribute_view_gui attribute=$node.object.data_map.text}</div>
	{/if}


	{if $node.object.data_map.url.has_content}
    	<p style="text-align:center;">
		<a href={$node.object.data_map.url.content|ezurl}>{$node.object.data_map.url.data_text|wash()}</a>
		</p>
	{/if}
  </div>
</div>

</div></div></div></div></div>
</div>