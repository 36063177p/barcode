@echo off
echo ========================================
echo    إصلاح مشاكل الاهتزاز والعمل بدون إنترنت
echo ========================================
echo.

echo تم إصلاح المشكلتين التاليتين:
echo.
echo 🔧 مشكلة الاهتزاز: Blocked call to navigator.vibrate
echo 🌐 مشكلة الاتصال: ERR_INTERNET_DISCONNECTED
echo.

echo الحلول المطبقة:
echo.
echo 🎭 إصلاح الاهتزاز:
echo    - معالجة الأخطاء مع try-catch
echo    - بديل بصري عند فشل الاهتزاز (وميض أحمر)
echo    - تسجيل مفصل في Console
echo    - دعم جميع المتصفحات
echo.
echo 📱 دعم العمل بدون إنترنت:
echo    - حفظ البيانات محلياً في localStorage
echo    - مزامنة تلقائية عند عودة الاتصال
echo    - مؤشر حالة الاتصال في الواجهة
echo    - رسائل واضحة للمستخدم
echo    - معالجة شاملة للأخطاء
echo.

echo الميزات المضافة:
echo.
echo ✅ الاهتزاز يعمل أو بديل بصري
echo ✅ العمل بدون إنترنت كامل
echo ✅ حفظ الجلسات محلياً
echo ✅ حفظ الباركودات محلياً
echo ✅ مزامنة تلقائية عند عودة الاتصال
echo ✅ مؤشر حالة الاتصال (🌐 متصل / 📱 غير متصل)
echo ✅ رسائل واضحة للمستخدم
echo ✅ تسجيل مفصل في Console
echo ✅ معالجة شاملة للأخطاء
echo.

echo أنواع البيانات المحفوظة محلياً:
echo.
echo 💾 الجلسات: offlineSessions في localStorage
echo 💾 الباركودات: offlineBarcodes في localStorage
echo 🔄 المزامنة التلقائية عند عودة الاتصال
echo 🧹 مسح البيانات المحلية بعد المزامنة الناجحة
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
echo    - ابدأ جلسة جديدة
echo    - انتقل لتبويب المسح
echo    - جرب قراءة باركود خاطئ (مثل "AB")
echo    - يجب أن يهتز أو يظهر وميض أحمر
echo.
echo 3. اختبر العمل بدون إنترنت:
echo    - اقطع الإنترنت (WiFi/Data)
echo    - أنشئ جلسة جديدة - يجب أن تعمل
echo    - اقرأ بعض الباركودات - يجب أن تُحفظ محلياً
echo    - أعد الاتصال بالإنترنت - يجب أن تتم المزامنة
echo.
echo 4. تحقق من الميزات:
echo    - مؤشر حالة الاتصال في أعلى التطبيق
echo    - رسائل واضحة عند تغيير حالة الاتصال
echo    - تسجيل مفصل في Console (F12)
echo    - حفظ البيانات في localStorage
echo.

echo المشاكل المحلولة:
echo - لا تظهر رسالة "Blocked call to navigator.vibrate"
echo - لا تظهر رسالة "ERR_INTERNET_DISCONNECTED"
echo - الاهتزاز يعمل أو بديل بصري
echo - العمل بدون إنترنت كامل
echo - حفظ البيانات محلياً
echo - مزامنة تلقائية عند عودة الاتصال
echo - مؤشر حالة الاتصال في الواجهة
echo.

echo اضغط Ctrl+C لإيقاف الخادم
echo.

REM تشغيل الخادم
python -m http.server 8000 --bind 0.0.0.0

pause
