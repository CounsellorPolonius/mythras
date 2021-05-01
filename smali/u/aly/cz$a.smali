.class public Lu/aly/cz$a;
.super Ljava/lang/Object;
.source "TBinaryProtocol.java"

# interfaces
.implements Lu/aly/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 59
    invoke-direct {p0, v0, v1}, Lu/aly/cz$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lu/aly/cz$a;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lu/aly/cz$a;->a:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lu/aly/cz$a;->b:Z

    .line 67
    iput-boolean p1, p0, Lu/aly/cz$a;->a:Z

    .line 68
    iput-boolean p2, p0, Lu/aly/cz$a;->b:Z

    .line 69
    iput p3, p0, Lu/aly/cz$a;->c:I

    return-void
.end method


# virtual methods
.method public a(Lu/aly/du;)Lu/aly/dg;
    .locals 3

    .line 73
    new-instance v0, Lu/aly/cz;

    iget-boolean v1, p0, Lu/aly/cz$a;->a:Z

    iget-boolean v2, p0, Lu/aly/cz$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lu/aly/cz;-><init>(Lu/aly/du;ZZ)V

    .line 74
    iget p1, p0, Lu/aly/cz$a;->c:I

    if-eqz p1, :cond_0

    .line 75
    iget p1, p0, Lu/aly/cz$a;->c:I

    invoke-virtual {v0, p1}, Lu/aly/cz;->c(I)V

    :cond_0
    return-object v0
.end method
