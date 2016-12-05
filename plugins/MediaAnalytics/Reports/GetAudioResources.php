<?php
/**
 * Copyright (C) InnoCraft Ltd - All rights reserved.
 *
 * NOTICE:  All information contained herein is, and remains the property of InnoCraft Ltd.
 * The intellectual and technical concepts contained herein are protected by trade secret or copyright law.
 * Redistribution of this information or reproduction of this material is strictly forbidden
 * unless prior written permission is obtained from InnoCraft Ltd.
 *
 * You shall use this code only in accordance with the license agreement obtained from InnoCraft Ltd.
 *
 * @link https://www.innocraft.com/
 * @license For license details see https://www.innocraft.com/license
 */

namespace Piwik\Plugins\MediaAnalytics\Reports;

use Piwik\Piwik;


class GetAudioResources extends GetVideoResources
{
    protected function init()
    {
        parent::init();

        $this->name = Piwik::translate('MediaAnalytics_AudioResources');
        $this->widgetTitle = 'MediaAnalytics_AudioResources';
        $this->documentation = Piwik::translate('MediaAnalytics_ReportDocumentationAudioResources');
        $this->order = 4;
    }

    public function getRelatedReports()
    {
        return array(
            self::factory('MediaAnalytics', 'GetGroupedAudioResources'),
            self::factory('MediaAnalytics', 'GetAudioTitles'),
        );
    }
}
