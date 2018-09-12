make_android:
	bash script/make_android.sh

sync_android:
	bash script/sync_android.sh

sync_log:
	bash script/sync_log.sh

rm_log:
	adb shell rm -rf /sdcard/marssample/log/*

start_server:
	bash script/start_server.sh
