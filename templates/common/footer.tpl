{**
 * templates/common/footer.tpl
 *
 * Copyright (c) 2013-2014 Simon Fraser University Library
 * Copyright (c) 2000-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site footer.
 *
 *}
{if $displayCreativeCommons}
	{translate key="common.ccLicense"}
{/if}

	<div id="pageFooter">
        <!-- Common footer content for all journals at journals.hioa.no -->
            {if $pageFooterIssn}
                <div id="journalIssn">
                    <h4 class="issn">{$pageFooterIssn}</h4>
                </div>
            {/if}
        <div id="pageFooterContentWrapper">
        <div id="commonPageFooterContent">
            
            <div id="hostedBy">
                <h4>{translate key="hioamod.footer.hostedbyheader"}</h4>
                <a id="hostedByHioaLSB" href="{translate key="hioamod.footer.lsblink"}">
                    <img class="hioaFooterLogo" src="/public/site/images/hioalogo-bars-black-on-transparent-bg-80x45.png" alt=""/>
                    <span>
                        <strong>{translate key="hioamod.footer.hioafullname"}</strong><br /> 
                        {translate key="hioamod.footer.lsbname"}
                    </span>
                </a>
            </div>

            <div id="cookiePolicy">
                <h4>{translate key="hioamod.footer.privacypolicyheader"}</h4>
                <p>{translate key="hioamod.footer.aboutcookieusagelink"}<p>
            </div>
        </div>
        {if $pageFooter!==''}
            <!-- Inserted from contents put in setup > the look > footer in journal settings -->
            <div id="journalPageFooterContent">{$pageFooter}</div>
        {/if}
        {call_hook name="Templates::Common::Footer::PageFooter"}
        </div>
    </div>


</div><!-- content -->
</div><!-- main -->
</div><!-- body -->

{get_debug_info}
{if $enableDebugStats}{include file=$pqpTemplate}{/if}

</div><!-- container -->
</body>
</html>
