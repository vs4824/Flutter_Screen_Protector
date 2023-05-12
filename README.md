# Flutter Screen Protector

Safe Data Leakage via Application Background Screenshot and Prevent Screenshot for Android and iOS.

## Feature

### iOS

Protect Data Leakage Background Screenshot

1. Protect data leakage with image

   ```
   await ScreenProtector.protectDataLeakageWithImage('LaunchImage');
   ```
   
2. Protect data leakage with color

   ```
   await ScreenProtector.protectDataLeakageWithColor(Colors.white);
   ```
   
3. Protect data leakage with blur

   ```
   await ScreenProtector.protectDataLeakageWithBlur();
   ```
   
### Prevent Screenshot

1. ON

   ```
   await ScreenProtector.preventScreenshotOn();
   ```
   
2. OFF

   ```
   await ScreenProtector.preventScreenshotOff();
   ```
   
3. Check Screen Recording

   ```
   final isRecording = await ScreenProtector.isRecording();
   ```
   
### Android

#### Protect Data Leakage Background Screenshot and Prevent Screenshot

1. ON

   ```
   await ScreenProtector.protectDataLeakageOn();
   ```
   
2. OFF

   ```
   await ScreenProtector.protectDataLeakageOff();
   ```
   
### Protect Data Leakage for Android 12+

   ```
   import com.prongbang.screenprotect.AndroidScreenProtector

class MainActivity : FlutterFragmentActivity() {

    private val screenProtector by lazy { AndroidScreenProtector.newInstance(this) }

    // For Android 12+
    override fun onWindowFocusChanged(hasFocus: Boolean) {
        super.onWindowFocusChanged(hasFocus)
        screenProtector.process(hasFocus.not())
    }
}
   ```

## Usage

### Android

Protect Data Leakage Background Screenshot and Prevent Screenshot.

   ```
   class _PreventScreenshotPageState extends State<MyApp> {
  
  @override
  void initState() async {
    await ScreenProtector.protectDataLeakageOn();
    super.initState();
  }

  @override
  void dispose() async {
    await ScreenProtector.protectDataLeakageOff();
    super.dispose();
  }
  
}
   ```

### iOS

1. Prevent Screenshot

   ```
   class _PreventScreenshotPageState extends State<MyApp> {

   @override
   void initState() async {
   await ScreenProtector.preventScreenshotOn();
   super.initState();
   }

   @override
   void dispose() async {
   await ScreenProtector.preventScreenshotOff();
   super.dispose();
   }
   }
   ```
   
2. Protect data leakage with color

   ```
   class _ProtectDataLeakagePageState extends State<MyApp> {

   @override
   void initState() async {
   await ScreenProtector.protectDataLeakageWithColor(Colors.white);
   super.initState();
   }
   }
   ```
   
3. Protect data leakage with image

   ```
   class _ProtectDataLeakagePageState extends State<MyApp> {

   @override
   void initState() async {
   await ScreenProtector.protectDataLeakageWithImage('LaunchImage');
   super.initState();
   }
   }
   ```
   
4. Protect data leakage with blur

   ```
   class _ProtectDataLeakagePageState extends State<MyApp> {

   @override
   void initState() async {
   await ScreenProtector.protectDataLeakageWithBlur();
   super.initState();
   }
   }
   ```
