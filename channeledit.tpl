<div class="panel-body">
    <h2 class="text-center">{$lang['channel']} {$lang['editor']}</h2>
    <h3 class="text-center">{$lang['channel']} {$lang['name']}</h3>
    <form class="form-horizontal" method="post" action="index.php?site=channeledit&amp;sid={$sid}&amp;cid={$cid}">
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['name']}</label>
            <div class="col-sm-8">
                {if isset($permoverview['b_channel_modify_name']) AND empty($permoverview['b_channel_modify_name'])}
                    -
                {else}
                    <input class="form-control" type="text" name="newsettings[channel_name]" value="{$channelinfo['channel_name']}" />
                {/if}
            </div>
            <div class="col-sm-2">
                <button class="btn btn-success" type="submit" name="editchannelname" title="{$lang['rename']}"><i class="fa fa-lg fa-edit"></i>&nbsp;{$lang['rename']}</button>
            </div>
        </div>
    </form>
    <hr/>
    <h3 class="text-center">//allgemein</h3>
    <form class="form-horizontal" method="post" action="index.php?site=channeledit&amp;sid={$sid}&amp;cid={$cid}">
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['topic']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_topic']) AND empty($permoverview['b_channel_modify_topic'])}
                    -
                {else}
                    <input class="form-control" type="text" name="newsettings[channel_topic]" value="{if isset($channelinfo['channel_topic'])}{$channelinfo['channel_topic']}{/if}" />
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['description']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_description']) AND empty($permoverview['b_channel_modify_description'])}
                    -
                {else}
                    <input class="form-control" type="text" name="newsettings[channel_description]" value="{if isset($channelinfo['channel_description'])}{$channelinfo['channel_description']}{/if}" />
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['codec']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_codec']) AND empty($permoverview['b_channel_modify_codec'])}
                    -
                {else}
                    <select class="form-control" name="newsettings[channel_codec]">
                        <option value="0" {if $channelinfo['channel_codec'] == '0'}selected="selected"{/if}>{$lang['codec0']}</option>
                        <option value="1" {if $channelinfo['channel_codec'] == '1'}selected="selected"{/if}>{$lang['codec1']}</option>
                        <option value="2" {if $channelinfo['channel_codec'] == '2'}selected="selected"{/if}>{$lang['codec2']}</option>
                        <option value="3" {if $channelinfo['channel_codec'] == '3'}selected="selected"{/if}>{$lang['codec3']}</option>
                        <option value="4" {if $channelinfo['channel_codec'] == '4'}selected="selected"{/if}>{$lang['codec4']}</option>
                        <option value="5" {if $channelinfo['channel_codec'] == '5'}selected="selected"{/if}>{$lang['codec5']}</option>
                    </select>
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['codecquality']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_codec_quality']) AND empty($permoverview['b_channel_modify_codec_quality'])}
                    -
                {else}
                    <select class="form-control" name="newsettings[channel_codec_quality]">
                        <option value="0" {if $channelinfo['channel_codec_quality'] == '0'}selected="selected"{/if}>0</option>
                        <option value="1" {if $channelinfo['channel_codec_quality'] == '1'}selected="selected"{/if}>1</option>
                        <option value="2" {if $channelinfo['channel_codec_quality'] == '2'}selected="selected"{/if}>2</option>
                        <option value="3" {if $channelinfo['channel_codec_quality'] == '3'}selected="selected"{/if}>3</option>
                        <option value="4" {if $channelinfo['channel_codec_quality'] == '4'}selected="selected"{/if}>4</option>
                        <option value="5" {if $channelinfo['channel_codec_quality'] == '5'}selected="selected"{/if}>5</option>
                        <option value="6" {if $channelinfo['channel_codec_quality'] == '6'}selected="selected"{/if}>6</option>
                        <option value="7" {if $channelinfo['channel_codec_quality'] == '7'}selected="selected"{/if}>7</option>
                        <option value="8" {if $channelinfo['channel_codec_quality'] == '8'}selected="selected"{/if}>8</option>
                        <option value="9" {if $channelinfo['channel_codec_quality'] == '9'}selected="selected"{/if}>9</option>
                        <option value="10" {if $channelinfo['channel_codec_quality'] == '10'}selected="selected"{/if}>10</option>
                    </select>
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['codecunencrypted']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_maxclients']) AND empty($permoverview['b_channel_modify_maxclients'])}
                    -
                {else}
                    <select class="form-control" name="newsettings[channel_codec_is_unencrypted]">
                        <option value="1" {if $channelinfo['channel_codec_is_unencrypted']==1}selected="selected"{/if}>{$lang['yes']}</option>
                        <option value="0" {if $channelinfo['channel_codec_is_unencrypted']==0}selected="selected"{/if}>{$lang['no']}</option>
                    </select>
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['maxclients']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_maxclients']) AND empty($permoverview['b_channel_modify_maxclients'])}
                    -
                {else}
                    <input class="form-control" type="text" name="newsettings[channel_maxclients]" value="{$channelinfo['channel_maxclients']}" />
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['maxfamilyclients']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_maxfamilyclients']) AND empty($permoverview['b_channel_modify_maxfamilyclients'])}
                    -
                {else}
                    <input class="form-control" type="text" name="newsettings[channel_maxfamilyclients]" value="{$channelinfo['channel_maxfamilyclients']}" />
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="chantyp">{$lang['type']}</label>
            <div class="col-sm-10">
                    {if !isset($permoverview['b_channel_modify_make_temporary']) or $permoverview['b_channel_modify_make_temporary'] == 1}
                        <input type="radio" name="chantyp" value="0" {if $channelinfo['channel_flag_permanent'] == 0 AND $channelinfo['channel_flag_semi_permanent'] == 0}checked="checked"{/if} />&nbsp;{$lang['temporary']}<br/>
                    {/if}
                    {if !isset($permoverview['b_channel_modify_make_semi_permanent']) or $permoverview['b_channel_modify_make_semi_permanent'] == 1}
                        <input type="radio" name="chantyp" value="1" {if $channelinfo['channel_flag_semi_permanent'] == 1}checked="checked"{/if} />&nbsp;{$lang['semipermanent']}<br/>
                    {/if}
                    {if !isset($permoverview['b_channel_modify_make_permanent']) or $permoverview['b_channel_modify_make_permanent'] == 1}
                        <input type="radio" name="chantyp" value="2" {if $channelinfo['channel_flag_permanent'] == 1 AND $channelinfo['channel_flag_default']==0}checked="checked"{/if} />&nbsp;{$lang['permanent']}<br/>
                    {/if}
                    {if !isset($permoverview['b_channel_modify_make_default']) or $permoverview['b_channel_modify_make_default'] == 1}
                        <input type="radio" name="chantyp" value="3" {if $channelinfo['channel_flag_default'] == 1}checked="checked"{/if} />&nbsp;{$lang['default']}
                    {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="newsettings[channel_flag_maxfamilyclients_inherited]">{$lang['maxfamilyclientsinherited']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_maxfamilyclients']) AND empty($permoverview['b_channel_modify_maxfamilyclients'])}
                    -
                {else}
                    <select class="form-control" name="newsettings[channel_flag_maxfamilyclients_inherited]">
                        <option value="0" {if $channelinfo['channel_flag_maxfamilyclients_inherited'] == '0'}selected="selected"{/if}>0</option>
                        <option value="1" {if $channelinfo['channel_flag_maxfamilyclients_inherited'] == '1'}selected="selected"{/if}>1</option>
                    </select>
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="newsettings[channel_needed_talk_power]">{$lang['neededtalkpower']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_needed_talk_power']) AND empty($permoverview['b_channel_modify_needed_talk_power'])}
                    -
                {else}
                    <input class="form-control" type="text" name="newsettings[channel_needed_talk_power]" value="{$channelinfo['channel_needed_talk_power']}" />
                {/if}
            </div>
        </div>
        <div class="form-group">
            <label class="label-control col-sm-2" for="">{$lang['phoneticname']}</label>
            <div class="col-sm-10">
                {if isset($permoverview['b_channel_modify_name']) AND empty($permoverview['b_channel_modify_name'])}
                    -
                {else}
                    <input class="form-control" type="text" name="newsettings[channel_name_phonetic]" value="{if isset($channelinfo['channel_name_phonetic'])}{$channelinfo['channel_name_phonetic']}{/if}" />
                {/if}
            </div>
        </div>
        <button class="btn btn-success btn-block" type="submit" name="editchannel" title="{$lang['edit']}"><i class="fa fa-lg fa-edit"></i>&nbsp;{$lang['edit']}</button>
    </form>
    {if !isset($permoverview['b_channel_modify_password']) OR $permoverview['b_channel_modify_password'] == 1}
        <hr/>
        <h3 class="text-center">{$lang['channelpassword']}</h3>
        <form class="form-horizontal" method="post" action="index.php?site=channeledit&amp;sid={$sid}&amp;cid={$cid}">
            <div class="form-group">
                <label class="label-control col-sm-2" for="">{$lang['passwordset']}</label>
                <div class="col-sm-10">
                    {if $channelinfo['channel_flag_password'] == 1}
                        {$lang['yes']}
                    {else}
                        {$lang['no']}
                    {/if}
                </div>
            </div>
            <div class="form-group">
                    <label class="label-control col-sm-2" for="">{$lang['newpassword']}</label>
                    <div class="col-sm-8">
                        {if $channelinfo['channel_flag_default'] == 1}
                            {$lang['defaultnopw']}
                        {else}
                            <input class="form-control" type="text" name="newsettings[channel_password]" value="" />
                        {/if}
                    </div>
                    <div class="col-sm-2"><button class="btn btn-success" type="submit" name="editpw" title="{$lang['password']} {$lang['save']}">{$lang['password']} {$lang['send']}</button></div>
            </div>
        </form>
    {/if}
    {if !isset($permoverview['b_channel_modify_parent']) OR $permoverview['b_channel_modify_parent'] == 1}
        <hr/>
        <h3 class="text-center">{$lang['channelmove']}</h3>
        <div class="form-group">
            <form class="form-horizontal" method="post" action="index.php?site=channeledit&amp;sid={$sid}&amp;cid={$cid}">
                <label class="label-control col-sm-2" for="">{$lang['moveto']}</label>
                <div class="col-sm-8">
                    <select class="form-control" name="move">
                        <option value="0">{$lang['mainchannel']}</option>
                        {foreach key=key item=value from=$channellist}
                            {if $value['cid'] != $cid}
                                <option value="{$value['cid']}">{$value['channel_name']}</option>
                            {/if}
                        {/foreach}
                    </select>
                </div>
                <div class="col-sm-2"><button class="btn btn-success btn-block" type="submit" name="movechan" title="{$lang['move']}"><i class="fa fa-lg fa-move"></i>&nbsp;{$lang['move']}</button></div>
            </form>
        </div>
    {/if}
</div>