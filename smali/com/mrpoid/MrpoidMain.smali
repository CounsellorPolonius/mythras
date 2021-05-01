.class public final Lcom/mrpoid/MrpoidMain;
.super Ljava/lang/Object;
.source "MrpoidMain.java"


# static fields
.field public static final INTENT_ACTION_LAUNCH_MRP:Ljava/lang/String; = "com.mrpoid.launchMrp"

.field public static final INTENT_KEY_ENTRY_ACTIVITY:Ljava/lang/String; = "entryActivity"

.field public static final INTENT_KEY_ENTRY_MRP:Ljava/lang/String; = "entryMrp"

.field public static final INTENT_KEY_SCREENSIZE:Ljava/lang/String; = "screensize"

.field static final TAG:Ljava/lang/String; = "MrpRunner"

.field private static defScnsize:Ljava/lang/String; = null

.field private static gContext:Landroid/content/Context; = null

.field private static gIsMainProcess:Z = true

.field private static manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 61
    sget-object v0, Lcom/mrpoid/MrpoidMain;->gContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .line 65
    sget-object v0, Lcom/mrpoid/MrpoidMain;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static init1(Landroid/content/Context;)V
    .locals 3

    const-string v0, ""

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EmulatorApplication create! pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/mrpoid/MrpoidMain;->gContext:Landroid/content/Context;

    return-void
.end method

.method public static isMainProcess()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/mrpoid/MrpoidMain;->gIsMainProcess:Z

    return v0
.end method

.method public static runMrp(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 142
    sget-object v0, Lcom/mrpoid/MrpoidMain;->defScnsize:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p0, p1, v1, v0}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static runMrp(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1

    .line 138
    sget-object v0, Lcom/mrpoid/MrpoidMain;->defScnsize:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static runMrp(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const-string v0, "MrpRunner"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMrp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mrpoid/core/EmuLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lcom/mrpoid/MrpoidMain;->init1(Landroid/content/Context;)V

    .line 95
    sget-object v0, Lcom/mrpoid/MrpoidMain;->manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/mrpoid/apps/procmgr/AppProcessManager;

    const-string v1, "com.mrpoid.apps.AppService"

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/mrpoid/apps/procmgr/AppProcessManager;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/mrpoid/MrpoidMain;->manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    .line 98
    :cond_0
    sget-object v0, Lcom/mrpoid/MrpoidMain;->manager:Lcom/mrpoid/apps/procmgr/AppProcessManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/mrpoid/MrpoidMain$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/mrpoid/MrpoidMain$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/mrpoid/apps/procmgr/AppProcessManager;->requestIdleProcess(IZLjava/lang/String;Lcom/mrpoid/apps/procmgr/AppProcessManager$RequestCallback;)V

    return-void
.end method

.method public static runMrp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 134
    invoke-static {p0, p1, v0, p2}, Lcom/mrpoid/MrpoidMain;->runMrp(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static setDefScnsize(Ljava/lang/String;)V
    .locals 0

    .line 75
    sput-object p0, Lcom/mrpoid/MrpoidMain;->defScnsize:Ljava/lang/String;

    return-void
.end method
