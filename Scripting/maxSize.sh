echo "Enter Directory name"
read dir
if [ ! -d $dir ]
then 
echo "Invalid Directory"
exit
fi
large=0
for file in `find $dir -type f`
do
size=`stat -c %s $file`
echo "size of $file is $size"
if[ $size -gt $large ]
then
large=$size
fi
done
echo "File with maximum size is $large"
