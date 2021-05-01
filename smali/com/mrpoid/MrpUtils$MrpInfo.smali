.class public Lcom/mrpoid/MrpUtils$MrpInfo;
.super Ljava/lang/Object;
.source "MrpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mrpoid/MrpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MrpInfo"
.end annotation


# instance fields
.field public appid:I

.field public detail:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public vendor:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
