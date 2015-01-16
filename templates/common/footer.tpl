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
                <h4>Hosted by</h4>
                <p class="hostedByHioaLSB">
                    <span id="hostedByHioa">Oslo and Akershus University College of Applied Sciences,</span><br/>
                    <span id="hostedByLSB"><a href="http://hioa.no/lsb">Learning Centre and Library</a></span>
                </p>
            </div>
            <div id="cookiePolicy">
                <h4>Cookie Policy</h4>
                <ul>
                    <li><a class="en_US" href="/help/journals.hioa.no-cookies-en_US.html">Cookie Policy (english)</a></li>
                    <li><a class="no_NO" href="/help/journals.hioa.no-cookies-no_NO.html">Cookie Policy (norsk)</a></li>
                </ul>
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
