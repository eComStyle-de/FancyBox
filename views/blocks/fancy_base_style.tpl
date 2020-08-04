[{*
/*    Please retain this copyright header in all versions of the software
 *
 *    Copyright (C) Josef A. Puckl | eComStyle.de
 *
 *    This program is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with this program.  If not, see {http://www.gnu.org/licenses/}.
 */
*}]
[{$smarty.block.parent}]
[{if !isset($oConfig)}]
    [{assign var="oConfig" value=$oViewConf->getConfig()}]
[{/if}]
[{if !$oConfig->getConfigParam('ecs_fancy_css') }]
    [{assign var="ecs_fancy_csslink" value=$oConfig->getConfigParam('ecs_fancy_csslink')}]
    [{assign var="fancyclasses" value=$oConfig->getConfigParam('ecs_fancy_classes')}]
    [{foreach from=$fancyclasses item=fancyclass}]
        [{if $oView->getClassName() eq $fancyclass}]
            [{oxstyle include=$ecs_fancy_csslink }]
        [{/if}]
    [{/foreach}]
[{/if}]