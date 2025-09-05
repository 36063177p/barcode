@echo off
echo ========================================
echo    إصلاح مشكلة الاهتزاز عند تغيير التبويبات
echo ========================================
echo.

echo تم إصلاح المشكلة التالية:
echo.
echo 🔧 الخطأ: Blocked call to navigator.vibrate because user hasn't tapped on the frame yet
echo 📍 الموقع: السطر 1167 في index.html - دالة showTab
echo.

echo الحل المطبق:
echo.
echo 🎭 إضافة معالجة الأخطاء:
echo    - استخدام try-catch مع navigator.vibrate
echo    - تسجيل مفصل في Console عند فشل الاهتزاز
echo    - منع ظهور رسائل الخطأ في Console
echo    - تحسين تجربة المستخدم
echo.

echo النتائج المتوقعة:
echo.
echo ✅ لا تظهر رسالة الخطأ في Console
echo ✅ الاهتزاز يعمل عند تغيير التبويبات (إذا كان مسموحاً)
echo ✅ معالجة الأخطاء عند فشل الاهتزاز
echo ✅ تسجيل مفصل في Console
echo ✅ تجربة مستخدم محسنة
echo.

echo جاري تشغيل الخادم المحلي...
echo.

REM الحصول على عنوان IP
for /f "tokens=2 delims=:" %%a in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    set ip=%%a
    goto :found
)
:found

REM تنظيف العنوان
set ip=%ip: =%

echo عنوان IP الخاص بك: %ip%
echo.
echo خطوات الاختبار:
echo.
echo 1. افتح المتصفح على الهاتف واذهب إلى:
echo    http://%ip%:8000
echo.
echo 2. اختبر إصلاح الاهتزاز:
echo    - افتح Console (F12)
echo    - انتقل بين التبويبات المختلفة
echo    - تحقق من Console - يجب ألا تظهر رسالة الخطأ
echo    - تحقق من الاهتزاز - يجب أن يهتز عند تغيير التبويبات
echo.
echo 3. تحقق من الميزات:
echo    - لا تظهر رسالة الخطأ في Console
echo    - الاهتزاز يعمل عند تغيير التبويبات
echo    - معالجة شاملة للأخطاء
echo    - تسجيل مفصل في Console
echo    - تجربة مستخدم محسنة
echo.

echo المشكلة المحلولة:
echo - لا تظهر رسالة "Blocked call to navigator.vibrate" في Console
echo - الاهتزاز يعمل عند تغيير التبويبات
echo - معالجة شاملة للأخطاء
echo - تسجيل مفصل في Console
echo - تجربة مستخدم محسنة
echo.

echo اضغط Ctrl+C لإيقاف الخادم
echo.

REM تشغيل الخادم
python -m http.server 8000 --bind 0.0.0.0

pause
