.class public Lcom/mrpoid/core/EmuLog;
.super Ljava/lang/Object;
.source "EmuLog.java"


# static fields
.field public static isShowLog:Z = true

.field private static m_toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "debug-mrpoid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    .line 31
    sget-object v0, Lcom/mrpoid/core/EmuLog;->m_toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 31
    sput-object p0, Lcom/mrpoid/core/EmuLog;->m_toast:Landroid/widget/Toast;

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 55
    sget-boolean v0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 56
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 61
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 50
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static setShowLog(Z)V
    .locals 0

    .line 45
    sput-boolean p0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    return-void
.end method

.method public static showScreenLog(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-boolean v0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    if-eqz v0, :cond_0

    .line 76
    new-instance v0, Lcom/mrpoid/core/EmuLog$1;

    invoke-direct {v0, p0, p1}, Lcom/mrpoid/core/EmuLog$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 65
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 69
    sget-boolean v0, Lcom/mrpoid/core/EmuLog;->isShowLog:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 70
    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
