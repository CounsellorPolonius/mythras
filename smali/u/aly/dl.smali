.class public final Lu/aly/dl;
.super Ljava/lang/Object;
.source "TStruct.java"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 28
    invoke-direct {p0, v0}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lu/aly/dl;->a:Ljava/lang/String;

    return-void
.end method
