.class final enum Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;
.super Ljava/lang/Enum;
.source "AppProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/apps/procmgr/AppProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ItemState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

.field public static final enum CONNECTED:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

.field public static final enum IDLE:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

.field public static final enum RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

.field public static final enum WAITING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->IDLE:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    .line 25
    new-instance v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    const-string v1, "WAITING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->WAITING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    .line 26
    new-instance v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    const-string v1, "CONNECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->CONNECTED:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    .line 27
    new-instance v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    const-string v1, "RUNNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    const/4 v0, 0x4

    .line 23
    new-array v0, v0, [Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->IDLE:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->WAITING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->CONNECTED:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->RUNNING:Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->$VALUES:[Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;
    .locals 1

    .line 23
    const-class v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    return-object p0
.end method

.method public static values()[Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;
    .locals 1

    .line 23
    sget-object v0, Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->$VALUES:[Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    invoke-virtual {v0}, [Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mrpoid/apps/procmgr/AppProcessManager$ItemState;

    return-object v0
.end method
