.class Lu/aly/bm$c;
.super Lu/aly/dr;
.source "Traffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/bm;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 330
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bm$1;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Lu/aly/bm$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/bm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 334
    check-cast p1, Lu/aly/dm;

    .line 335
    iget v0, p2, Lu/aly/bm;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(I)V

    .line 336
    iget p2, p2, Lu/aly/bm;->b:I

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 330
    check-cast p2, Lu/aly/bm;

    invoke-virtual {p0, p1, p2}, Lu/aly/bm$c;->a(Lu/aly/dg;Lu/aly/bm;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/bm;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 341
    check-cast p1, Lu/aly/dm;

    .line 342
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bm;->a:I

    const/4 v0, 0x1

    .line 343
    invoke-virtual {p2, v0}, Lu/aly/bm;->a(Z)V

    .line 344
    invoke-virtual {p1}, Lu/aly/dm;->w()I

    move-result p1

    iput p1, p2, Lu/aly/bm;->b:I

    .line 345
    invoke-virtual {p2, v0}, Lu/aly/bm;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 330
    check-cast p2, Lu/aly/bm;

    invoke-virtual {p0, p1, p2}, Lu/aly/bm$c;->b(Lu/aly/dg;Lu/aly/bm;)V

    return-void
.end method
