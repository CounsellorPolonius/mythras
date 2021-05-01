.class Lu/aly/cr$a;
.super Lu/aly/dq;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/cr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dq<",
        "Lu/aly/cr;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lu/aly/dq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cr$1;)V
    .locals 0

    .line 216
    invoke-direct {p0}, Lu/aly/cr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 216
    check-cast p2, Lu/aly/cr;

    invoke-virtual {p0, p1, p2}, Lu/aly/cr$a;->b(Lu/aly/dg;Lu/aly/cr;)V

    return-void
.end method

.method public a(Lu/aly/dg;Lu/aly/cr;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    iput-object v0, p2, Lu/aly/cr;->c:Lu/aly/co;

    .line 221
    iput-object v0, p2, Lu/aly/cr;->b:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, Lu/aly/dg;->j()Lu/aly/dl;

    .line 225
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, Lu/aly/cr;->a(Lu/aly/dg;Lu/aly/db;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cr;->b:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, Lu/aly/cr;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-short v0, v0, Lu/aly/db;->c:S

    invoke-virtual {p2, v0}, Lu/aly/cr;->b(S)Lu/aly/co;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cr;->c:Lu/aly/co;

    .line 232
    :cond_0
    invoke-virtual {p1}, Lu/aly/dg;->m()V

    .line 236
    invoke-virtual {p1}, Lu/aly/dg;->l()Lu/aly/db;

    .line 237
    invoke-virtual {p1}, Lu/aly/dg;->k()V

    return-void
.end method

.method public synthetic b(Lu/aly/dg;Lu/aly/ch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 216
    check-cast p2, Lu/aly/cr;

    invoke-virtual {p0, p1, p2}, Lu/aly/cr$a;->a(Lu/aly/dg;Lu/aly/cr;)V

    return-void
.end method

.method public b(Lu/aly/dg;Lu/aly/cr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Lu/aly/cr;->i()Lu/aly/co;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lu/aly/cr;->j()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p2}, Lu/aly/cr;->c()Lu/aly/dl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/dl;)V

    .line 246
    iget-object v0, p2, Lu/aly/cr;->c:Lu/aly/co;

    invoke-virtual {p2, v0}, Lu/aly/cr;->a(Lu/aly/co;)Lu/aly/db;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/dg;->a(Lu/aly/db;)V

    .line 247
    invoke-virtual {p2, p1}, Lu/aly/cr;->c(Lu/aly/dg;)V

    .line 248
    invoke-virtual {p1}, Lu/aly/dg;->c()V

    .line 249
    invoke-virtual {p1}, Lu/aly/dg;->d()V

    .line 250
    invoke-virtual {p1}, Lu/aly/dg;->b()V

    return-void

    .line 243
    :cond_1
    :goto_0
    new-instance p1, Lu/aly/dh;

    const-string p2, "Cannot write a TUnion with no set value!"

    invoke-direct {p1, p2}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw p1
.end method
