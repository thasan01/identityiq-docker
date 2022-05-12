if [ -z ${SPTARGET} ]; 
then 
  echo "SPTARGET is not defined";
  exit -1;
fi

copy_file () {
  echo "Copying $1 from $2 to $3";
  cp $2/$1 $3
}

export FILE="${SPTARGET}.iiq.properties";
copy_file ${FILE} "./conf" "./ssb"
copy_file "pom.xml" "./conf" "./ssb"

echo "Performing SSB build"
cd ssb
mvn package
