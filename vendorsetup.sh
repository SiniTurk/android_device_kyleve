for i in eng userdebug user; do
	add_lunch_combo cm_kyleve-${i}
done

function kyleve
{
	lunch cm_kyleve-userdebug
	mka bacon -i -j4
}
