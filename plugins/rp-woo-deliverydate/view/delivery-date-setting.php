<div class="clear"></div>
<div class="postbox rpoddcontainer" id="dashboard_right_now" >
    <h3 class="hndle"><?php echo __('Delivery Date Settings', 'rpodd') ?></h3>
    <div class="inside">
        <div class="main">
            <form method="post" action="" name="<?php echo self::$plugin_slug; ?>">
                <input type="hidden" name="<?php echo self::$plugin_slug; ?>" value="1"/>
                <table class="rp_table" >
                    <tr>
                        <td width="30%" class="boldtext"><?php echo __('Enabled delivery date?', 'rpodd') ?></td>
                        <td>
                            <input type="checkbox" name="enable_delivery_date" <?php echo ($this->get_setting("enable_delivery_date")) ? "checked=checked" : ""; ?> value="1" />
                        </td>
                    </tr>
                    <tr>
                        <td width="30%" class="boldtext"><?php echo __('Required delivery date?', 'rpodd') ?></td>
                        <td>
                            <input type="checkbox" name="required_delivery_date" <?php echo ($this->get_setting("required_delivery_date")) ? "checked=checked" : ""; ?> value="1" />
                        </td>
                    </tr>

                    <tr>
                        <td class="boldtext"><?php echo __('Delivery Date Title', 'rpodd') ?></td>
                        <td>
                            <input type="text"  name="date_title" value="<?php echo $this->get_setting("date_title") ?>"/> 
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="boldtext"><?php echo __('Date Format', 'rpodd') ?></td>
                        <td>
                            <input type="text"  name="date_format" value="<?php echo $this->get_setting("date_format") ?>"/> <br>
                            <span class="description"><br><code>d</code>: <?php echo __('Day of month (no leading zero)', 'rpodd') ?><br><code>dd</code>: <?php echo __('Day of month (two digit)', 'rpodd') ?><br><code>m</code>: <?php echo __('Month of year (no leading zero)', 'rpodd') ?><br><code>mm</code>: <?php echo __('Month of year (two digit)', 'rpodd') ?><br><code>y</code>:<?php echo __(' Year (two digit)', 'rpodd') ?><br><code>yy</code>: <?php echo __('Year (four digit)', 'rpodd') ?>.</span>
                        </td>
                    </tr>
                    <tr>
                        <td class="boldtext"><?php echo __('Week Day Off', 'rpodd') ?></td>
                        <td>
                            <?php
                            $weekday = $this->get_setting("weekdayoff");
                            foreach (self::$day as $key => $value):
                                $checked = (!empty($weekday) && is_array($weekday) && in_array($key, $weekday)) ? "checked=checked" : "";
                                echo '<input type="checkbox" ' . $checked . ' name="weekdayoff[' . $key . ']" value="' . $key . '"  value="' . $key . '">' . $value . "<br/>";
                            endforeach;
                            ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="boldtext"><?php echo __('Specific Day Off', 'rpodd') ?></td>
                        <td>
                            <table id="tbl_specific_day">
                                <tr id="th_specific_day">
                                    <th><?php echo __('Day', "rpodd") ?></th>
                                    <th><?php echo __('Month', "rpodd") ?></th>
                                    <th><?php echo __('Year', "rpodd") ?></th>
                                    <th>&nbsp;</th>
                                </tr>
                                <?php
                                $specific_day = $this->get_setting("specific_day");
                                if (!empty($specific_day) && isset($specific_day["day"]) && count($specific_day["day"]) > 0):
                                    for ($spe = 0; $spe < count($specific_day["day"]); $spe++):
                                        ?>
                                        <tr>
                                            <td>
                                                <select name="specific_day[day][]">
                                                    <option value="0"><?php echo __('Select Day', 'rpodd') ?></option>
                                                    <?php
                                                    for ($day = 1; $day <= 31; $day++):
                                                        $selected = ($specific_day["day"][$spe] == $day) ? "selected=selected" : "";
                                                        echo '<option value="' . $day . '" ' . $selected . ' >' . $day . '</option>';
                                                    endfor;
                                                    ?>
                                                </select>
                                            </td>
                                            <td>
                                                <select name="specific_day[month][]">
                                                    <option value="0"><?php echo __('Select Month', 'rpodd') ?></option>
                                                    <?php
                                                    foreach (self::$month as $key => $value):
                                                        $selected = ($specific_day["month"][$spe] == $key) ? "selected=selected" : "";
                                                        echo '<option value="' . $key . '" ' . $selected . ' >' . $value . '</option>';
                                                    endforeach;
                                                    ?>
                                                </select>
                                            </td>
                                            <td>
                                                <select name="specific_day[year][]">
                                                    <option value="0"><?php echo __('Select Year', 'rpodd') ?></option>
                                                    <?php
                                                    for ($year = date("Y"); $year <= date("Y") + 50; $year++):
                                                        $selected = ($specific_day["year"][$spe] == $year) ? "selected=selected" : "";
                                                        echo '<option value="' . $year . '" ' . $selected . ' >' . $year . '</option>';
                                                    endfor;
                                                    ?>
                                                </select>
                                            </td>
                                            <td><a href="javascript:void(0);" class="removedayrow button"><?php _e("Remove", "rpodd") ?></a></td>
                                        </tr>
                                        <?php
                                    endfor;
                                    ?>

                                    <?php
                                endif;
                                ?>
                                <tr>
                                    <td colspan="4"><a href="javascript:void(0);" class="adddayrow button"><?php _e("Add More", "rpodd") ?></a></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="boldtext"><?php echo __('Specific Period Off', 'rpodd') ?></td>
                        <td>
                            <table id="tbl_specific_period_day">
                                <tr id="th_specific_period_day">
                                    <th><?php echo __('From Day', "rpodd") ?></th>
                                    <th><?php echo __('From  Month', "rpodd") ?></th>
                                    <th><?php echo __('From Year', "rpodd") ?></th>
                                    <th><?php echo __('To Day', "rpodd") ?></th>
                                    <th><?php echo __('To  Month', "rpodd") ?></th>
                                    <th><?php echo __('To Year', "rpodd") ?></th>
                                    <th>&nbsp;</th>
                                </tr>
                                <?php
                                $specific_period = $this->get_setting("specific_period");
                                if (!empty($specific_period) && isset($specific_period["fday"]) && count($specific_period["fday"]) > 0):
                                    for ($sp = 0; $sp < count($specific_period["fday"]); $sp++):
                                        ?>
                                        <tr>
                                            <td>
                                                <select name="specific_period[fday][]">
                                                    <option value="0"><?php echo __('Select Day', 'rpodd') ?></option>
                                                    <?php
                                                    for ($day = 1; $day <= 31; $day++):
                                                        $selected = ($specific_period["fday"][$sp] == $day) ? "selected=selected" : "";
                                                        echo '<option value="' . $day . '" ' . $selected . '>' . $day . '</option>';
                                                    endfor;
                                                    ?>
                                                </select>
                                            </td>
                                            <td>
                                                <select name="specific_period[fmonth][]">
                                                    <option value="0"><?php echo __('Select Month', 'rpodd') ?></option>
                                                    <?php
                                                    foreach (self::$month as $key => $value):
                                                        $selected = ($specific_period["fmonth"][$sp] == $key) ? "selected=selected" : "";
                                                        echo '<option value="' . $key . '" ' . $selected . ' >' . $value . '</option>';
                                                    endforeach;
                                                    ?>
                                                </select>
                                            </td>
                                            <td>
                                                <select name="specific_period[fyear][]">
                                                    <option value="0"><?php echo __('Select Year', 'rpodd') ?></option>
                                                    <?php
                                                    for ($year = date("Y"); $year <= date("Y") + 50; $year++):
                                                        $selected = ($specific_period["fyear"][$sp] == $year) ? "selected=selected" : "";
                                                        echo '<option value="' . $year . '" ' . $selected . ' >' . $year . '</option>';
                                                    endfor;
                                                    ?>
                                                </select>
                                            </td>
                                            <td>
                                                <select name="specific_period[tday][]">
                                                    <option value="0"><?php echo __('Select Day', 'rpodd') ?></option>
                                                    <?php
                                                    for ($day = 1; $day <= 31; $day++):
                                                        $selected = ($specific_period["tday"][$sp] == $day) ? "selected=selected" : "";
                                                        echo '<option value="' . $day . '" ' . $selected . '>' . $day . '</option>';
                                                    endfor;
                                                    ?>
                                                </select>
                                            </td>
                                            <td>
                                                <select name="specific_period[tmonth][]">
                                                    <option value="0"><?php echo __('Select Month', 'rpodd') ?></option>
                                                    <?php
                                                    foreach (self::$month as $key => $value):
                                                        $selected = ($specific_period["tmonth"][$sp] == $key) ? "selected=selected" : "";
                                                        echo '<option value="' . $key . '" ' . $selected . ' >' . $value . '</option>';
                                                    endforeach;
                                                    ?>
                                                </select>
                                            </td>
                                            <td>
                                                <select name="specific_period[tyear][]">
                                                    <option value="0"><?php echo __('Select Year', 'rpodd') ?></option>
                                                    <?php
                                                    for ($year = date("Y"); $year <= date("Y") + 50; $year++):
                                                        $selected = ($specific_period["tyear"][$sp] == $year) ? "selected=selected" : "";
                                                        echo '<option value="' . $year . '" ' . $selected . ' >' . $year . '</option>';
                                                    endfor;
                                                    ?>
                                                </select>
                                            </td>
                                            <td><a href="javascript:void(0);" class="removeperiodrow button"><?php echo __("Remove", "rpodd") ?></a></td>
                                        </tr>
                                        <?php
                                    endfor;
                                endif;
                                ?>
                                <tr><td colspan="7"><a href="javascript:void(0);" class="addperiodrow button"><?php echo __("Add More", "rpodd") ?></a></td></tr>        
                            </table>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="boldtext"><?php echo __('Disable X days from current days?', 'rpodd') ?></td>
                        <td>
                            <input type="number"  name="disable_x_days" value="<?php echo $this->get_setting("disable_x_days") ?>"/> <br>
                            <span class="description"><br><code><?php echo __('Example', 'rpodd') ?></code>: <?php echo __('1 for today,2 for tomorrow, Add 0 for not disable any day.', 'rpodd') ?></span>
                        </td>
                    </tr>
                    <tr>
                        <td width="30%" class="boldtext"><?php echo __('Enabled Timepicker?', 'rpodd') ?></td>
                        <td>
                            <input type="checkbox" name="enable_timepicker" <?php echo ($this->get_setting("enable_timepicker")) ? "checked=checked" : ""; ?> value="1" />
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="boldtext"><?php echo __('Time Format', 'rpodd') ?></td>
                        <td>
                            <input type="text"  name="time_format" value="<?php echo $this->get_setting("time_format") ?>"/> <br>
                            <span class="description"><br><code>H</code>: <?php echo __("Hour with no leading 0 (24 hour)", "rpodd") ?><br><code>HH</code>: <?php echo __("Hour with leading 0 (24 hour)", "rpodd") ?><br><code>h</code>: <?php echo __("Hour with no leading 0 (12 hour)", "rpodd") ?><br><code>hh</code>: <?php echo __("Hour with leading 0 (12 hour)", "rpodd") ?><br><code>m</code>: <?php echo __("Minute with no leading 0", "rpodd") ?><br><code>mm</code>: <?php echo __("Minute with leading 0", "rpodd") ?><br><code>TT</code>: <?php echo __("AM or PM for AM/PM.", "rpodd") ?></span>
                        </td>
                    </tr>
                    <tr>
                        <td class="boldtext"><?php echo __('Shipping Time', 'rpodd') ?></td>
                        <td>
                            <?php
                            $timefrom = $this->get_setting("time_from");
                            $time_to = $this->get_setting("time_to");
                            foreach (self::$day as $key => $value):
                                echo __('For ', 'rpodd').$value." : ";
                                ?>
                                <select name="time_from[<?php echo $key; ?>]">

                                    <?php
                                    for ($i = 1; $i <= 24; $i++):
                                        $selected = ($timefrom[$key] == $i) ? "selected=selected" : "";
                                        ?>
                                        <option <?php echo $selected; ?> value="<?php echo $i ?>"><?php echo $i ?></option>
                                        <?php
                                    endfor;
                                    ?>
                                </select>
                                <label><?php echo __("To", "rpodd"); ?></label>
                                <select name="time_to[<?php echo $key; ?>]">
                                    <?php
                                    for ($i = 1; $i <= 24; $i++):
                                        $selected = ($time_to[$key] == $i) ? "selected=selected" : "";
                                        ?>
                                        <option <?php echo $selected; ?> value="<?php echo $i ?>"><?php echo $i ?></option>
                                        <?php
                                    endfor;
                                    ?>
                                </select><br><br>
                            <?php endforeach; ?>
                        </td>
                    </tr>
                    <tr>
                        <td class="boldtext"><?php echo __('Date Picker Theme', 'rpodd') ?></td>
                        <td>
                            <select name="datepicker_theme">
                                <option value="default" <?php echo ($this->get_setting("datepicker_theme") == "default") ? "selected=selected" : ""; ?> ><?php echo __("Light", "rpodd") ?></option>
                                <option value="dark" <?php echo ($this->get_setting("datepicker_theme") == "dark") ? "selected=selected" : ""; ?> ><?php echo __("Dark", "rpodd") ?></option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="boldtext"><?php echo __('Date Picker Language', 'rpodd') ?></td>
                        <td>
                            <select name="datepicker_language">
                                <?php
                                foreach (self::$datepicker_language as $key => $value):
                                    $selected = ($this->get_setting("datepicker_language") == $key) ? "selected=selected" : "";
                                    echo '<option ' . $selected . ' value="' . $key . '">' . $value . '</option>';
                                endforeach;
                                ?>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <input type="submit" class="button button-primary" name="btn-rpodd-submit" value="<?php echo __("Save Settings", "rpodd") ?>" />
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<div style="display: none;">
    <table id="tblinitrow">
        <tr class="initrow">
            <td>
                <select name="specific_day[day][]">
                    <option value="0"><?php echo __('Select Day', 'rpodd') ?></option>
                    <?php
                    for ($day = 1; $day <= 31; $day++):
                        echo '<option value="' . $day . '">' . $day . '</option>';
                    endfor;
                    ?>
                </select>
            </td>
            <td>
                <select name="specific_day[month][]">
                    <option value="0"><?php echo __('Select Month', 'rpodd') ?></option>
                    <?php
                    foreach (self::$month as $key => $value):
                        echo '<option value="' . $key . '">' . $value . '</option>';
                    endforeach;
                    ?>
                </select>
            </td>
            <td>
                <select name="specific_day[year][]">
                    <option value="0"><?php echo __('Select Year', 'rpodd') ?></option>
                    <?php
                    for ($year = date("Y"); $year <= date("Y") + 50; $year++):
                        echo '<option value="' . $year . '">' . $year . '</option>';
                    endfor;
                    ?>
                </select>
            </td>
            <td><a href="javascript:void(0);" class="removedayrow button"><?php echo __("Remove", "rpodd"); ?></a></td>
        </tr>
    </table>
    <table id="tblinitperiodrow">
        <tr class="thinitperiodrow">
            <td>
                <select name="specific_period[fday][]">
                    <option value="0"><?php echo __('Select Day', 'rpodd') ?></option>
                    <?php
                    for ($day = 1; $day <= 31; $day++):
                        echo '<option value="' . $day . '">' . $day . '</option>';
                    endfor;
                    ?>
                </select>
            </td>
            <td>
                <select name="specific_period[fmonth][]">
                    <option value="0"><?php echo __('Select Month', 'rpodd') ?></option>
                    <?php
                    foreach (self::$month as $key => $value):
                        echo '<option value="' . $key . '">' . $value . '</option>';
                    endforeach;
                    ?>
                </select>
            </td>
            <td>
                <select name="specific_period[fyear][]">
                    <option value="0"><?php echo __('Select Year', 'rpodd') ?></option>
                    <?php
                    for ($year = date("Y"); $year <= date("Y") + 50; $year++):
                        echo '<option value="' . $year . '">' . $year . '</option>';
                    endfor;
                    ?>
                </select>
            </td>
            <td>
                <select name="specific_period[tday][]">
                    <option value="0"><?php echo __('Select Day', 'rpodd') ?></option>
                    <?php
                    for ($day = 1; $day <= 31; $day++):
                        echo '<option value="' . $day . '">' . $day . '</option>';
                    endfor;
                    ?>
                </select>
            </td>
            <td>
                <select name="specific_period[tmonth][]">
                    <option value="0"><?php echo __('Select Month', 'rpodd') ?></option>
                    <?php
                    foreach (self::$month as $key => $value):
                        echo '<option value="' . $key . '">' . $value . '</option>';
                    endforeach;
                    ?>
                </select>
            </td>
            <td>
                <select name="specific_period[tyear][]">
                    <option value="0"><?php echo __('Select Year', 'rpodd') ?></option>
                    <?php
                    for ($year = date("Y"); $year <= date("Y") + 50; $year++):
                        echo '<option value="' . $year . '">' . $year . '</option>';
                    endfor;
                    ?>
                </select>
            </td>
            <td><a href="javascript:void(0);" class="removeperiodrow button"><?php echo __("Remove", "rpodd") ?></a></td>
        </tr>
    </table>
</div>