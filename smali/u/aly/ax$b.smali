.class Lu/aly/ax$b;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Lu/aly/dp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ax$1;)V
    .locals 0

    .line 357
    invoke-direct {p0}, Lu/aly/ax$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/ax$a;
    .locals 2

    .line 359
    new-instance v0, Lu/aly/ax$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/ax$a;-><init>(Lu/aly/ax$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/do;
    .locals 1

    .line 357
    invoke-virtual {p0}, Lu/aly/ax$b;->a()Lu/aly/ax$a;

    move-result-object v0

    return-object v0
.end method
