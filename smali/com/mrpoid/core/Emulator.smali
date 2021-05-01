.class public Lcom/mrpoid/core/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEF_MIN_SDCARD_SACE_MB:I = 0x8

.field public static final DEF_WORK_PATH:Ljava/lang/String; = "mythroad/"

.field private static final MSG_CALLBACK:I = 0x2

.field private static final MSG_EXIT:I = 0xa

.field private static final MSG_HEART:I = 0x200

.field private static final MSG_INIT:I = 0x101

.field private static final MSG_LUNCH:I = 0x4

.field private static final MSG_MRP_EVENT:I = 0x9

.field private static final MSG_MRP_EXIT:I = 0x8

.field private static final MSG_MRP_PAUSE:I = 0x5

.field private static final MSG_MRP_RESUME:I = 0x6

.field private static final MSG_MRP_STOP:I = 0x7

.field private static final MSG_MR_SMS_GET_SC:I = 0x3

.field private static final MSG_NATIVE_AUDIO:I = 0x100004

.field private static final MSG_NATIVE_SIGSEGV:I = 0x100002

.field private static final MSG_SMSOK:I = 0x100003

.field private static final MSG_TIMER_OUT:I = 0x1

.field public static final PUBLIC_STROAGE_PATH:Ljava/lang/String;

.field public static final SDCARD_ROOT:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "mrpoid-java"

.field public static fps:I

.field private static final instance:Lcom/mrpoid/core/Emulator;

.field static final log:Lcom/edroid/common/utils/Logger;

.field public static meminfo:Ljava/lang/String;


# instance fields
.field private N2J_editInputContent:Ljava/lang/String;

.field public N2J_imei:Ljava/lang/String;

.field public N2J_imsi:Ljava/lang/String;

.field public N2J_memLeft:I

.field public N2J_memLen:I

.field public N2J_memTop:I

.field public N2J_sim:Ljava/lang/String;

.field private alive:I

.field private audio:Lcom/mrpoid/core/EmuAudio;

.field private bInited:Z

.field private cfg:Lcom/mrpoid/core/EmuConfig;

.field private emuView:Landroid/view/View;

.field private emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mLastVmRoot:Ljava/lang/String;

.field private mLastWorkPath:Ljava/lang/String;

.field private mVmRoot:Ljava/lang/String;

.field private mWorkPath:Ljava/lang/String;

.field private mainHandler:Landroid/os/Handler;

.field private mrpThread:Landroid/os/HandlerThread;

.field private procIndex:I

.field private runMrpPath:Ljava/lang/String;

.field private running:Z

.field private screen:Lcom/mrpoid/core/EmuScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "mrpoid-java"

    const/4 v1, 0x1

    .line 67
    invoke-static {v1, v0}, Lcom/edroid/common/utils/Logger;->create(ZLjava/lang/String;)Lcom/edroid/common/utils/Logger;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Mrpoid/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mrpoid/core/Emulator;->PUBLIC_STROAGE_PATH:Ljava/lang/String;

    const-string v0, "loader"

    .line 134
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1012
    new-instance v0, Lcom/mrpoid/core/Emulator;

    invoke-direct {v0}, Lcom/mrpoid/core/Emulator;-><init>()V

    sput-object v0, Lcom/mrpoid/core/Emulator;->instance:Lcom/mrpoid/core/Emulator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mLastVmRoot:Ljava/lang/String;

    const-string v0, "mythroad/"

    .line 124
    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    const-string v0, "mythroad/"

    .line 125
    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mLastWorkPath:Ljava/lang/String;

    return-void
.end method

.method private N2J_callVoidMethod([Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 804
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_6

    const/4 v1, 0x0

    .line 806
    aget-object v2, p1, v1

    if-nez v2, :cond_1

    return-void

    :cond_1
    const-string v3, "call"

    .line 811
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-lt v0, v4, :cond_6

    .line 812
    aget-object v0, p1, v5

    if-eqz v0, :cond_6

    .line 813
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Lcom/mrpoid/app/EmulatorActivity;->reqCallPhone(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "viewUrl"

    .line 815
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lt v0, v4, :cond_6

    .line 816
    aget-object v0, p1, v5

    if-eqz v0, :cond_6

    .line 817
    aget-object p1, p1, v5

    invoke-virtual {p0, p1}, Lcom/mrpoid/core/Emulator;->reqBrowser(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "getSmsCenter"

    .line 819
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 820
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v0, 0x3

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    const-string v0, "showToast"

    .line 821
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    aget-object p1, p1, v5

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const-string p1, "crash"

    .line 823
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 824
    new-instance p1, Lcom/mrpoid/core/Emulator$3;

    invoke-direct {p1, p0}, Lcom/mrpoid/core/Emulator$3;-><init>(Lcom/mrpoid/core/Emulator;)V

    .line 831
    invoke-virtual {p1}, Lcom/mrpoid/core/Emulator$3;->start()V

    :cond_6
    :goto_0
    return-void
.end method

.method private N2J_drawImage(Ljava/lang/String;IIII)V
    .locals 6

    .line 853
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    invoke-static {p1}, Lcom/mrpoid/core/BitmapPool;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mrpoid/core/EmuScreen;->drawBitmap(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method private N2J_finish()V
    .locals 2

    .line 548
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "N2J_finish() called"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    .line 550
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    invoke-virtual {v0}, Lcom/mrpoid/app/EmulatorActivity;->finish()V

    :cond_1
    return-void
.end method

.method private N2J_flush()V
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuScreen;->postFlush()V

    return-void
.end method

.method private N2J_getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "mrpoid-java"

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N2J_getBitmap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {p1}, Lcom/mrpoid/core/BitmapPool;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private N2J_getHostByName(Ljava/lang/String;)V
    .locals 3

    const-string v0, "mrpoid-java"

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N2J_getHostByName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mrpoid/core/Emulator$2;

    invoke-direct {v1, p0, p1}, Lcom/mrpoid/core/Emulator$2;-><init>(Lcom/mrpoid/core/Emulator;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 745
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private N2J_getIntSysinfo(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 643
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "netType"

    .line 648
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 649
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mrpoid/core/EmuUtils;->getNetworkType(Landroid/content/Context;)I

    move-result p1

    return p1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private N2J_getStringSysinfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 663
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "imei"

    .line 666
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->N2J_imei:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string v1, "imsi"

    .line 668
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->N2J_imsi:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v1, "phone-model"

    .line 670
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string v1, "phone-num"

    .line 672
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "10086"

    return-object p1

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    return-object v0
.end method

.method private N2J_sendHandlerMessage(IIII)V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p4

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private N2J_sendSms(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 1

    .line 710
    sget-object p3, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "N2J_sendSms: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/16 p2, 0x9

    .line 712
    invoke-virtual {p0, p2, p1, p1}, Lcom/mrpoid/core/Emulator;->postMrpEvent(III)V

    return p1
.end method

.method private N2J_setOptions(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 770
    :cond_0
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N2J_setOptions("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    const-string v0, "keepScreenOn"

    .line 772
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->emuView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 774
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->emuView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "meminfo"

    .line 775
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 776
    sput-object p2, Lcom/mrpoid/core/Emulator;->meminfo:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method private N2J_showDlg(Ljava/lang/String;)V
    .locals 2

    .line 686
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/mrpoid/R$string;->warn:I

    .line 687
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 688
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/mrpoid/R$string;->ok:I

    new-instance v1, Lcom/mrpoid/core/Emulator$1;

    invoke-direct {v1, p0}, Lcom/mrpoid/core/Emulator$1;-><init>(Lcom/mrpoid/core/Emulator;)V

    .line 689
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 695
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 696
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private N2J_showEdit(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mrpoid/app/EmulatorActivity;->showMrpInputer(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 631
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private N2J_timerStop()V
    .locals 2

    .line 587
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/mrpoid/core/Emulator;)Landroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/mrpoid/core/Emulator;
    .locals 1

    .line 1014
    sget-object v0, Lcom/mrpoid/core/Emulator;->instance:Lcom/mrpoid/core/Emulator;

    return-object v0
.end method

.method public static getPublicFilePath(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 926
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mrpoid/core/Emulator;->PUBLIC_STROAGE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 927
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->createDir(Ljava/io/File;)I

    .line 928
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mrpoid/core/Emulator;->PUBLIC_STROAGE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static native native_getAppName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native native_getStringOptions(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native native_setIntOptions(Ljava/lang/String;I)V
.end method

.method public static native native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public N2J_pthread()V
    .locals 4

    .line 173
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N2J_pthread tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 175
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "mrpThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 177
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    .line 178
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/16 v1, 0x200

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public N2J_requestCallback(II)V
    .locals 5

    .line 753
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 755
    :cond_0
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "N2J_requestCallback %d,%d pid="

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public N2J_timerStart(I)V
    .locals 4

    .line 571
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->useOpenGL:Z

    if-eqz v0, :cond_0

    .line 274
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->emuView:Landroid/view/View;

    goto :goto_0

    .line 276
    :cond_0
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->emuView:Landroid/view/View;

    .line 278
    :goto_0
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->emuView:Landroid/view/View;

    return-object p1
.end method

.method exit_i()V
    .locals 2

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    .line 522
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 525
    invoke-direct {p0}, Lcom/mrpoid/core/Emulator;->N2J_timerStop()V

    .line 527
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuAudio;->stop()V

    .line 528
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuAudio;->recyle()V

    .line 529
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuScreen;->recyle()V

    .line 530
    invoke-static {}, Lcom/mrpoid/core/BitmapPool;->recyle()V

    .line 532
    iput-object v1, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    .line 533
    iput-object v1, p0, Lcom/mrpoid/core/Emulator;->emuView:Landroid/view/View;

    .line 535
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public getActivity()Lcom/mrpoid/app/EmulatorActivity;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    return-object v0
.end method

.method public getAudio()Lcom/mrpoid/core/EmuAudio;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getMrNetType(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "46000"

    const/4 v2, 0x5

    .line 365
    invoke-virtual {p1, v0, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46002"

    .line 366
    invoke-virtual {p1, v0, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46007"

    .line 367
    invoke-virtual {p1, v0, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "46001"

    .line 369
    invoke-virtual {p1, v0, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v1, "46003"

    .line 371
    invoke-virtual {p1, v0, v1, v0, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public getMrpAppId()Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    iget-object v0, v0, Lcom/mrpoid/app/EmulatorActivity;->mMrpAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getMrpHandler()Landroid/os/Handler;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getRunningMrpPath()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->runMrpPath:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Lcom/mrpoid/core/EmuScreen;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emuView:Landroid/view/View;

    return-object v0
.end method

.method public getVmDefaultFullPath()Ljava/lang/String;
    .locals 2

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mythroad/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVmFullFilePath(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 916
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVmFullPath()Ljava/lang/String;
    .locals 2

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVmLastFullPath()Ljava/lang/String;
    .locals 2

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mLastVmRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mLastWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVmRootPath()Ljava/lang/String;
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    return-object v0
.end method

.method public getVmWorkPath()Ljava/lang/String;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 188
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x101

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x200

    if-eq v0, v1, :cond_2

    const v1, 0x100002

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 238
    iget v0, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v3, p1}, Lcom/mrpoid/core/Emulator;->native_handleMessage(III)I

    move-result p1

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 226
    :pswitch_0
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->exit_i()V

    goto/16 :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/mrpoid/core/Emulator;->native_event(III)V

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->stop_i()V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->resume_i()V

    goto :goto_0

    .line 211
    :pswitch_4
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->pause_i()V

    goto :goto_0

    .line 196
    :pswitch_5
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->init_i()V

    .line 197
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->startup_i()V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x10

    .line 207
    invoke-virtual {p0, p1, v1, v1}, Lcom/mrpoid/core/Emulator;->native_event(III)V

    goto :goto_0

    .line 229
    :cond_1
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "native crash!!!!!!!!!!"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NATIVE CRASHED SIGSEVG "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mrpoid/app/EmulatorActivity;->postToast(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thrad alive----------- "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mrpoid/core/Emulator;->alive:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mrpoid/core/Emulator;->alive:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->w(Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->init_i()V

    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSms(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public initConfig(Landroid/content/Context;)Lcom/mrpoid/core/EmuConfig;
    .locals 1

    .line 267
    invoke-static {}, Lcom/mrpoid/core/EmuConfig;->getInstance()Lcom/mrpoid/core/EmuConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    .line 268
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    invoke-virtual {v0, p1}, Lcom/mrpoid/core/EmuConfig;->init(Landroid/content/Context;)V

    .line 269
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    return-object p1
.end method

.method initFont()V
    .locals 5

    .line 378
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    const-string v1, "fonts/gb16_mrpoid.uc2"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    const-string v4, "mythroad/fonts/sky16.uc2"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/edroid/common/utils/FileUtils;->assetToFileIfNotExist(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I

    .line 379
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    const-string v1, "fonts/font16.tsf"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    const-string v4, "mythroad/fonts/font16.tsf"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/edroid/common/utils/FileUtils;->assetToFileIfNotExist(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)I

    return-void
.end method

.method public initPath()V
    .locals 3

    const/16 v0, 0x8

    .line 868
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->isSDAvailable(I)Z

    .line 873
    sget-object v0, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/Emulator;->setVmRootPath(Ljava/lang/String;)V

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mythroad/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v1, v1, Lcom/mrpoid/core/EmuConfig;->g_scnw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v1, v1, Lcom/mrpoid/core/EmuConfig;->g_scnh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/Emulator;->setVmWorkPath(Ljava/lang/String;)V

    .line 877
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sd path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 878
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mythroad path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method init_i()V
    .locals 4

    .line 282
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->bInited:Z

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->mrVm:Z

    if-eqz v0, :cond_1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libmrpoid2.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/Emulator;->loadso(Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/libmrpoid.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mrpoid/core/Emulator;->loadso(Ljava/lang/String;)V

    .line 292
    :goto_0
    new-instance v0, Lcom/mrpoid/core/EmuScreen;

    invoke-direct {v0, p0}, Lcom/mrpoid/core/EmuScreen;-><init>(Lcom/mrpoid/core/Emulator;)V

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    .line 293
    new-instance v0, Lcom/mrpoid/core/EmuAudio;

    invoke-direct {v0, p0}, Lcom/mrpoid/core/EmuAudio;-><init>(Lcom/mrpoid/core/Emulator;)V

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    .line 296
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->initPath()V

    .line 297
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->initFont()V

    .line 299
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call native_create tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    invoke-virtual {p0, v0, v1}, Lcom/mrpoid/core/Emulator;->native_init(Lcom/mrpoid/core/EmuScreen;Lcom/mrpoid/core/EmuAudio;)V

    .line 305
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->setNativeParams()V

    .line 307
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    invoke-virtual {v0}, Lcom/mrpoid/app/EmulatorActivity;->updateTaskUI()V

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/mrpoid/core/Emulator;->bInited:Z

    return-void
.end method

.method public isInited()Z
    .locals 1

    .line 383
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->bInited:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    return v0
.end method

.method jthread()V
    .locals 4

    .line 164
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mrpThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mrpThread:Landroid/os/HandlerThread;

    .line 165
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mrpThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mrpThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    .line 167
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/16 v1, 0x200

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method native loadso(Ljava/lang/String;)V
.end method

.method public lunch(Lcom/mrpoid/app/EmulatorActivity;Ljava/lang/String;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Lcom/mrpoid/app/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    .line 145
    iput-object p1, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    .line 146
    iput-object p2, p0, Lcom/mrpoid/core/Emulator;->runMrpPath:Ljava/lang/String;

    .line 147
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mrpoid/core/Emulator;->mainHandler:Landroid/os/Handler;

    .line 149
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget p1, p1, Lcom/mrpoid/core/EmuConfig;->compMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->pthread()V

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->jthread()V

    :goto_0
    return-void
.end method

.method public native native_destroy()V
.end method

.method public native native_event(III)V
.end method

.method public native native_getMemoryInfo()V
.end method

.method public native native_handleMessage(III)I
.end method

.method public native native_init(Lcom/mrpoid/core/EmuScreen;Lcom/mrpoid/core/EmuAudio;)V
.end method

.method public native native_lockBitmap()V
.end method

.method public native native_pause()V
.end method

.method public native native_resume()V
.end method

.method public native native_screenReset(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
.end method

.method public native native_smsRecv(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native native_startMrp(Ljava/lang/String;)I
.end method

.method public native native_stop()V
.end method

.method public native native_surfaceCreate(Landroid/view/Surface;)V
.end method

.method public native native_timerOut()V
.end method

.method public native native_unLockBitmap()V
.end method

.method public onActivityDestroy()V
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pause()V
    .locals 2

    .line 494
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method pause_i()V
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuAudio;->pause()V

    .line 499
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuScreen;->pause()V

    .line 500
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->native_pause()V

    return-void
.end method

.method public postMrpEvent(III)V
    .locals 2

    .line 605
    iget-boolean v0, p0, Lcom/mrpoid/core/Emulator;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method native pthread()V
.end method

.method public recyle()V
    .locals 1

    .line 255
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->native_destroy()V

    .line 256
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuAudio;->recyle()V

    .line 257
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuScreen;->recyle()V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/mrpoid/core/Emulator;->bInited:Z

    return-void
.end method

.method public reqBrowser(Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 781
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "wap.skmeg.com/dsmWap/error.jsp"

    .line 785
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    iget-object p1, p0, Lcom/mrpoid/core/Emulator;->emulatorActivity:Lcom/mrpoid/app/EmulatorActivity;

    const-string v0, "MRP\u542f\u52a8\u5931\u8d25\uff01"

    invoke-virtual {p1, v0}, Lcom/mrpoid/app/EmulatorActivity;->postToast(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    .line 790
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 791
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method resume_i()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->audio:Lcom/mrpoid/core/EmuAudio;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuAudio;->resume()V

    .line 508
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->screen:Lcom/mrpoid/core/EmuScreen;

    invoke-virtual {v0}, Lcom/mrpoid/core/EmuScreen;->resume()V

    .line 509
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->native_resume()V

    return-void
.end method

.method public sendAudioCallbak(I)V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const v1, 0x100004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setEditInputContent(Ljava/lang/String;)V
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/mrpoid/core/Emulator;->N2J_editInputContent:Ljava/lang/String;

    return-void
.end method

.method setNativeParams()V
    .locals 4

    const-string v0, "smsCenter"

    const-string v1, "10086"

    .line 313
    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdpath"

    .line 314
    sget-object v1, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mythroadPath"

    .line 316
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dataDir"

    .line 317
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "procId"

    .line 318
    sget v1, Lcom/mrpoid/app/EmulatorService;->PROC_ID:I

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setIntOptions(Ljava/lang/String;I)V

    const-string v0, "memSize"

    .line 319
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v1, v1, Lcom/mrpoid/core/EmuConfig;->heapSize:I

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setIntOptions(Ljava/lang/String;I)V

    const-string v0, "fontType"

    .line 320
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget v1, v1, Lcom/mrpoid/core/EmuConfig;->fontType:I

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setIntOptions(Ljava/lang/String;I)V

    const-string v0, "glDraw"

    .line 321
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v1, v1, Lcom/mrpoid/core/EmuConfig;->useOpenGL:Z

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setIntOptions(Ljava/lang/String;I)V

    const-string v0, "mrpPause"

    .line 322
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v1, v1, Lcom/mrpoid/core/EmuConfig;->mrpPause:Z

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setIntOptions(Ljava/lang/String;I)V

    .line 323
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-boolean v0, v0, Lcom/mrpoid/core/EmuConfig;->diyModel:Z

    if-eqz v0, :cond_0

    const-string v0, "myModel"

    .line 324
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->cfg:Lcom/mrpoid/core/EmuConfig;

    iget-object v1, v1, Lcom/mrpoid/core/EmuConfig;->model:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 329
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mrpoid/core/Emulator;->N2J_imsi:Ljava/lang/String;

    .line 330
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->N2J_imei:Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->N2J_imei:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->N2J_imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "460007045677764"

    .line 339
    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->N2J_imsi:Ljava/lang/String;

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->N2J_imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "867441028559456"

    .line 341
    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->N2J_imei:Ljava/lang/String;

    :cond_4
    const-string v0, "imei"

    .line 343
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->N2J_imei:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    .line 344
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->N2J_imsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "optType"

    .line 346
    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->N2J_imsi:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mrpoid/core/Emulator;->getMrNetType(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 349
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 351
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 352
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v1, 0x3a

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const-string v2, "procName"

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public setProcIndex(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/mrpoid/core/Emulator;->procIndex:I

    return-void
.end method

.method public setVmRootPath(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 937
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 945
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 946
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->createDir(Ljava/io/File;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 947
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSDPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mkdirs FAIL!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 951
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 956
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 957
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 961
    :cond_4
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mLastVmRoot:Ljava/lang/String;

    .line 962
    iput-object p1, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    const-string p1, "sdpath"

    .line 963
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sd path has change to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 952
    :cond_5
    :goto_0
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSDPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can\'t read or write!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 938
    :cond_6
    :goto_1
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v0, "setSDPath: null"

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setVmWorkPath(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 986
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mVmRoot:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    invoke-static {v0}, Lcom/edroid/common/utils/FileUtils;->createDir(Ljava/io/File;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMythroadPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mkdirs FAIL!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 992
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 997
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 998
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1001
    :cond_4
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->mLastWorkPath:Ljava/lang/String;

    .line 1002
    iput-object p1, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    const-string p1, "mythroadPath"

    .line 1003
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mrpoid/core/Emulator;->native_setStringOptions(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mythroad path has change to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->mWorkPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    return-void

    .line 993
    :cond_5
    :goto_0
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMythroadPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " can\'t read or write!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 979
    :cond_6
    :goto_1
    sget-object p1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v0, "setMythroadPath: input error!"

    invoke-virtual {p1, v0}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method startup_i()V
    .locals 10

    .line 423
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->runMrpPath:Ljava/lang/String;

    .line 424
    sget-object v1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 427
    sget-object v1, Lcom/mrpoid/core/Emulator;->SDCARD_ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 428
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->getVmWorkPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->getVmWorkPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    sget-object v1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newPath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 436
    invoke-static {v1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 437
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v2

    .line 438
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 440
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    const-string v4, ".mrp"

    .line 441
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 442
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mrp"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    :cond_2
    :goto_0
    sget-object v4, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mrp name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 446
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0, v1}, Lcom/mrpoid/core/Emulator;->getVmFullFilePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 448
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_4

    .line 449
    :cond_3
    sget-object v4, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "copyMrp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 450
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v4}, Lcom/edroid/common/utils/FileUtils;->copyTo(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-ne v3, v0, :cond_4

    .line 451
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "copy mrp to VmWorkPath fail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move-object v0, v1

    .line 457
    :cond_5
    :goto_1
    sget-object v1, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/edroid/common/utils/Logger;->d(Ljava/lang/String;)V

    .line 459
    iput-object v0, p0, Lcom/mrpoid/core/Emulator;->runMrpPath:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->runMrpPath:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 462
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "no run file!"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->e(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->stop()V

    return-void

    .line 467
    :cond_6
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "start"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->runMrpPath:Ljava/lang/String;

    const/4 v1, 0x0

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_7

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mrpoid/core/Emulator;->runMrpPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    :cond_7
    iput-boolean v2, p0, Lcom/mrpoid/core/Emulator;->running:Z

    .line 477
    invoke-virtual {p0, v0}, Lcom/mrpoid/core/Emulator;->native_startMrp(Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/mrpoid/core/Emulator;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopFoce()V
    .locals 0

    .line 516
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->stop()V

    return-void
.end method

.method stop_i()V
    .locals 2

    .line 488
    sget-object v0, Lcom/mrpoid/core/Emulator;->log:Lcom/edroid/common/utils/Logger;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Lcom/edroid/common/utils/Logger;->i(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0}, Lcom/mrpoid/core/Emulator;->native_stop()V

    return-void
.end method
