.class Lu/aly/an$c;
.super Lu/aly/dr;
.source "ActiveUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dr<",
        "Lu/aly/an;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lu/aly/dr;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/an$1;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Lu/aly/an$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/dg;Lu/aly/an;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 339
    check-cast p1, Lu/aly/dm;

    .line 340
    iget-object v0, p2, Lu/aly/an;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dm;->a(Ljava/lang/String;)V

    .line 341
    iget-object p2, p2, Lu/aly/an;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lu/aly/dm;->a(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 335
    check-cast p2, Lu/aly/an;

    invoke-virtual {p0, p1, p2}, Lu/aly/an$c;->a(Lu/aly/dg;Lu/aly/an;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/an;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 346
    check-cast p1, Lu/aly/dm;

    .line 347
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/an;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 348
    invoke-virtual {p2, v0}, Lu/aly/an;->a(Z)V

    .line 349
    invoke-virtual {p1}, Lu/aly/dm;->z()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lu/aly/an;->b:Ljava/lang/String;

    .line 350
    invoke-virtual {p2, v0}, Lu/aly/an;->b(Z)V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 335
    check-cast p2, Lu/aly/an;

    invoke-virtual {p0, p1, p2}, Lu/aly/an$c;->b(Lu/aly/dg;Lu/aly/an;)V

    return-void
.end method
