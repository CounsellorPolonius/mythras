.class Lcom/mrpoid/core/Emulator$2;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mrpoid/core/Emulator;->N2J_getHostByName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mrpoid/core/Emulator;

.field final synthetic val$host:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mrpoid/core/Emulator;Ljava/lang/String;)V
    .locals 0

    .line 728
    iput-object p1, p0, Lcom/mrpoid/core/Emulator$2;->this$0:Lcom/mrpoid/core/Emulator;

    iput-object p2, p0, Lcom/mrpoid/core/Emulator$2;->val$host:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator$2;->val$host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 734
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 737
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    rsub-int/lit8 v4, v1, 0x3

    mul-int/lit8 v4, v4, 0x8

    shl-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/mrpoid/core/Emulator$2;->this$0:Lcom/mrpoid/core/Emulator;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1, v2}, Lcom/mrpoid/core/Emulator;->N2J_requestCallback(II)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
