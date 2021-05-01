.class public Lcom/mrpoid/app/EmulatorService;
.super Lcom/mrpoid/apps/procmgr/AppProcessService;
.source "EmulatorService.java"


# static fields
.field public static final ACTION_BACKGROUND:Ljava/lang/String; = "com.mrpoid.actions.BACKGROUND"

.field public static final ACTION_FOREGROUND:Ljava/lang/String; = "com.mrpoid.actions.FOREGROUND"

.field public static final ACTION_STARTMRP:Ljava/lang/String; = "com.mrpoid.actions.STARTMRP"

.field public static PROC_ID:I = 0x0

.field static final TAG:Ljava/lang/String; = "EmulatorService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/mrpoid/apps/procmgr/AppProcessService;-><init>()V

    return-void
.end method

.method private handleStart(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.mrpoid.actions.STARTMRP"

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorService;->getProcIndex()I

    move-result v1

    sput v1, Lcom/mrpoid/app/EmulatorService;->PROC_ID:I

    .line 64
    sget v1, Lcom/mrpoid/app/EmulatorService;->PROC_ID:I

    invoke-virtual {v0, v1}, Lcom/mrpoid/core/Emulator;->setProcIndex(I)V

    const-string v1, "screensize"

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/edroid/common/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-static {}, Lcom/mrpoid/core/EmuConfig;->getInstance()Lcom/mrpoid/core/EmuConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mrpoid/core/EmuConfig;->setScreenSizeS(Ljava/lang/String;)V

    :cond_0
    const-string v1, "entryMrp"

    .line 70
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->getRunningMrpPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "EmulatorService"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already running!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lcom/mrpoid/core/Emulator;->stop()V

    .line 80
    :cond_2
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mrpoid.launchMrp"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/mrpoid/app/EmulatorActivity;->APP_ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0}, Lcom/mrpoid/app/EmulatorService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .line 50
    invoke-super {p0}, Lcom/mrpoid/apps/procmgr/AppProcessService;->onCreate()V

    .line 51
    invoke-static {}, Lcom/mrpoid/core/Emulator;->getInstance()Lcom/mrpoid/core/Emulator;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0, v0}, Lcom/mrpoid/app/EmulatorService;->stopForeground(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/mrpoid/app/EmulatorService;->handleStart(Landroid/content/Intent;)V

    const/4 p1, 0x0

    return p1
.end method
