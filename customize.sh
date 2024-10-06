export PRODUCT=/system/product/etc/permissions
ui_print "- 正在释放文件"
unzip -o "$ZIPFILE" 'system/*' -d $MODPATH
cp $PRODUCT/privapp-permissions-product.xml $MODPATH/system/product/etc/permissions/privapp-permissions-product.xml
sed -i '$c    <!--传送门补丁-->\n   <privapp-permissions package="com.miui.contentextension">\n      <permission name="android.permission.WRITE_SECURE_SETTINGS" />\n   </privapp-permissions>\n</permissions>' $MODPATH/system/product/etc/permissions/privapp-permissions-product.xml