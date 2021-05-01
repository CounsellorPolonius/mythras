.class public Lcom/mrpoid/apps/AppActivity0;
.super Lcom/mrpoid/app/EmulatorActivity;
.source "AppActivity0.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.mrpoid.apps.AppActivity0"

    .line 7
    sput-object v0, Lcom/mrpoid/apps/AppActivity0;->APP_ACTIVITY_NAME:Ljava/lang/String;

    const-string v0, "com.mrpoid.apps.AppService0"

    .line 8
    sput-object v0, Lcom/mrpoid/apps/AppActivity0;->APP_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/mrpoid/app/EmulatorActivity;-><init>()V

    return-void
.end method
