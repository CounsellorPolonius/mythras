.class public Lcom/mrpoid/apps/AppService3;
.super Lcom/mrpoid/app/EmulatorService;
.source "AppService3.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.mrpoid.apps.AppActivity3"

    .line 8
    sput-object v0, Lcom/mrpoid/app/EmulatorActivity;->APP_ACTIVITY_NAME:Ljava/lang/String;

    const-string v0, "com.mrpoid.apps.AppService3"

    .line 9
    sput-object v0, Lcom/mrpoid/app/EmulatorActivity;->APP_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/mrpoid/app/EmulatorService;-><init>()V

    return-void
.end method
