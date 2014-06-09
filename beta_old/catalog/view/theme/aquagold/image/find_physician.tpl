<?php echo $header; ?>



<!--Section Start: -->
  <section class="body_container regist_bg">
  <div class="shadow_bg">
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="mid_center">
      <div class="nav_bar"><?php foreach ($breadcrumbs as $breadcrumb) { ?>
      <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
      <?php } ?></div>
    </div>
    <div class="full_border_box" style="border-bottom:0px;">
        <div class="mid_center">
          <div class="gift_container">	  
  
  	<!--top doctors-->
  <aside style="max-width: 20rem; float: right;">
  <br><div style="color:#AB8F4B;"><font size="4">AQUAGOLD<sup>&reg;</sup> <br>Medalist of the Month</font></div>
  <img class="gold" src="catalog/view/theme/aquagold/image/gold.png" width="70"/>
  <img class="silver" src="catalog/view/theme/aquagold/image/silver.png" width="70"/>
  <img class="bronze" src="catalog/view/theme/aquagold/image/bronze.png" width="70"/>
  <br><br>
    <div class="first">
    <div><b>Dr. Fredric S. Brandt</b></div>
      <div style="color:#AB8F4B;" class="member">Pioneer</div>
      <div class="address"><i>4425 Ponce de Leon Blvd, Suite 200</i></div>
      <div><i>Coral Gables, FL 33146</i></div>
	  <div><a href="http://www.drfredricbrandt.com/" target="_blank">drfredricbrandt.com</a>
	  <a href="https://twitter.com/drfredricbrandt" target="_blank"><img src="catalog/view/theme/aquagold/image/Twitter_gold_2.png" width="20"/></a>
	  <a href="https://www.facebook.com/DrFredricBrandt" target="_blank"><img src="catalog/view/theme/aquagold/image/Facebook_gold_2.png" width="20"/></a>
	  <a href="https://www.youtube.com/user/drbrandtskincare" target="_blank">videos</a>
	  </div>
    </div><br>

    <div class="second">
    <div><b>Dr. David Goldberg</b></div>
      <div style="color:#AB8F4B;" class="member">Pioneer</div>
      <div class="address"><i>38 Newbury St.</i></div>
      <div><i> Boston, MA 02116</i></div>
	  <div><a href="http://www.skinandlasers.com/" target="_blank">skinandlasers.com</a></div>
    </div><br>

    <div class="third">
    <div><b>Dr. Daniel A. DelVecchio</b></div>
      <div style="color:#AB8F4B;" class="member">Pioneer</div>
      <div class="address"><i>38 Newbury St. </i></div>
      <div><i>Boston, MA 02116</i></div>
    </div><br>
  </aside>
  
            <h2>find a physician</h2>
            <div class="physician_box" style="width:450px;">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="230px" style="font-size: 14px;">Did not find your physician?</td>
                  <td><input type="button" value="Nominate a physician" class="nominate_btn" onclick="location.href='<?php echo $search; ?>';"></td>
                </tr>
              </table>
            </div>
            <div class="zip_code_text" style="width:350px; padding-top: 20px; color: #826323; font-weight:bold;"><?php echo (count($customers) > 0) ? "Aquagold Physicians in '$code $city'" : "No results!"; ?></div>
            <div class="profile_box_row" style="width:450px;">
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <?php foreach($customers as $customer) { ?>
                <tr>
                  <!--<td width="165px" valign="top"><img src="catalog/view/theme/aquagold/image/profile1.jpg" width="132" height="133" alt="img"></td>-->
                  <td width="275px" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td>Dr. <?php echo $customer['name']; ?><br>
                          <span style="color:#7c6323;"> <?php echo $customer['member']; ?></span></td>
                      </tr>
                      <tr>
                        <td><br>
                          <?php echo $customer['address_1']; ?><br>
                          <?php echo $customer['address_2'].' '.$customer['city'].' '.$customer['postcode']; ?></td>
                      </tr>
                    </table></td>
                  <td width="" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><a href="javascript:;" title="Gold Rush Discount Rate: <?php echo ($customer['discount']) ? (int)$customer['discount'] : '0'; ?>%">See discount rate</a></td>
                      </tr>
                      <tr>
                        <td><a href="<?php echo $voucher.'&customer_id='.$customer['customer_id']; ?>"><div class="gift_cart" style="height:auto;">Buy a giftcard<!--<br>
                            for this doctor--></div></a></td>
                      </tr>
                    </table></td>
                </tr>
                <tr>
                  <td colspan="3"><!--&nbsp;--><br /><br /></td>
                </tr>
                <?php } ?>
                <!--<tr>
                  <td width="165px" valign="top"><img src="catalog/view/theme/aquagold/image/profile2.jpg" width="132" height="133" alt="img"></td>
                  <td width="275px" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td>Dr. Jon Ryan<br>
                        <span style="color:#7c6323;"> Innovator Member</span></td>
                      </tr>
                      <tr>
                        <td><br>
                          <br>
                          140 Parkway Ave<br>
                          New york, NY 11373</td>
                      </tr>
                    </table></td>
                  <td width="" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td>Gold Rush Discount Rate: 10%</td>
                      </tr>
                      <tr>
                        <td><a href="<?php echo $voucher; ?>"><div class="gift_cart">Buy a giftcard<br>
                            for this doctor</div></a></td>
                      </tr>
                    </table></td>
                </tr>-->
              </table>
            </div>
          </div>
        </div>
      </div>
  </div>
  </section>
<?php echo $footer; ?>