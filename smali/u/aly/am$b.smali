.class Lu/aly/am$b;
.super Ljava/lang/Object;
.source "ActivateMsg.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/am$1;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lu/aly/am$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/am$a;
    .locals 2

    .line 217
    new-instance v0, Lu/aly/am$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/am$a;-><init>(Lu/aly/am$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 215
    invoke-virtual {p0}, Lu/aly/am$b;->a()Lu/aly/am$a;

    move-result-object v0

    return-object v0
.end method
