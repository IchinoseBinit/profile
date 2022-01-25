git pull origin main

sed -i '4d' bhirkutimandap_mofin/android/gradle.properties
sed -i '4d' easy_soft_mofin/android/gradle.properties
sed -i '4d' gongabu_mofin/android/gradle.properties
sed -i '4d' nagarjun_mofin/android/gradle.properties
sed -i '4d' susandesh_mofin/android/gradle.properties
sed -i '4d' sarvamanya_mofin/android/gradle.properties
sed -i '4d' united_mofin/android/gradle.properties

echo "org.gradle.java.home=C:\\\Program Files\\\Java\\\jdk-11.0.13" >> bhirkutimandap_mofin/android/gradle.properties
echo "org.gradle.java.home=C:\\\Program Files\\\Java\\\jdk-11.0.13" >> easy_soft_mofin/android/gradle.properties
echo "org.gradle.java.home=C:\\\Program Files\\\Java\\\jdk-11.0.13" >> gongabu_mofin/android/gradle.properties
echo "org.gradle.java.home=C:\\\Program Files\\\Java\\\jdk-11.0.13" >> nagarjun_mofin/android/gradle.properties
echo "org.gradle.java.home=C:\\\Program Files\\\Java\\\jdk-11.0.13" >> susandesh_mofin/android/gradle.properties
echo "org.gradle.java.home=C:\\\Program Files\\\Java\\\jdk-11.0.13" >> sarvamanya_mofin/android/gradle.properties
echo "org.gradle.java.home=C:\\\Program Files\\\Java\\\jdk-11.0.13" >> united_mofin/android/gradle.properties

