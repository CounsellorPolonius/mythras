.class Lu/aly/be$c;
.super Lu/aly/dr;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 386
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Lu/aly/be$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/be;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 390
    check-cast p1, Lu/aly/dm;

    .line 391
    iget-wide v0, p2, Lu/aly/be;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(D)V

    .line 392
    iget-wide v0, p2, Lu/aly/be;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(D)V

    .line 393
    iget-wide v0, p2, Lu/aly/be;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dm;->a(J)V

    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 386
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$c;->a(Lu/aly/dg;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/be;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 398
    check-cast p1, Lu/aly/dm;

    .line 399
    invoke-virtual {p1}, Lu/aly/dm;->y()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/be;->a:D

    const/4 v0, 0x1

    .line 400
    invoke-virtual {p2, v0}, Lu/aly/be;->a(Z)V

    .line 401
    invoke-virtual {p1}, Lu/aly/dm;->y()D

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/be;->b:D

    .line 402
    invoke-virtual {p2, v0}, Lu/aly/be;->b(Z)V

    .line 403
    invoke-virtual {p1}, Lu/aly/dm;->x()J

    move-result-wide v1

    iput-wide v1, p2, Lu/aly/be;->c:J

    .line 404
    invoke-virtual {p2, v0}, Lu/aly/be;->c(Z)V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 386
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$c;->b(Lu/aly/dg;Lu/aly/be;)V

    return-void
.end method
