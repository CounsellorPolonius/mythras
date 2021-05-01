.class Lu/aly/bl$d;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bl$1;)V
    .locals 0

    .line 702
    invoke-direct {p0}, Lu/aly/bl$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bl$c;
    .locals 2

    .line 704
    new-instance v0, Lu/aly/bl$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bl$c;-><init>(Lu/aly/bl$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lu/aly/bl$d;->a()Lu/aly/bl$c;

    move-result-object v0

    return-object v0
.end method
