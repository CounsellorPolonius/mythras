.class public Lu/aly/ao;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/ao$c;,
        Lu/aly/ao$d;,
        Lu/aly/ao$a;,
        Lu/aly/ao$b;,
        Lu/aly/ao$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/ao;",
        "Lu/aly/ao$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/ao$e;",
            "Lu/aly/ct;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Lu/aly/dl;

.field private static final m:Lu/aly/db;

.field private static final n:Lu/aly/db;

.field private static final o:Lu/aly/db;

.field private static final p:Lu/aly/db;

.field private static final q:Lu/aly/db;

.field private static final r:Lu/aly/db;

.field private static final s:Lu/aly/db;

.field private static final t:Lu/aly/db;

.field private static final u:Lu/aly/db;

.field private static final v:Lu/aly/db;

.field private static final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lu/aly/do;",
            ">;",
            "Lu/aly/dp;",
            ">;"
        }
    .end annotation
.end field

.field private static final x:I = 0x0

.field private static final y:I = 0x1


# instance fields
.field private A:[Lu/aly/ao$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lu/aly/bk;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 33
    new-instance v0, Lu/aly/dl;

    const-string v1, "AppInfo"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ao;->l:Lu/aly/dl;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "key"

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->m:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "version"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->n:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "version_index"

    const/16 v5, 0x8

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->o:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "package_name"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->p:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "sdk_type"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->q:Lu/aly/db;

    .line 40
    new-instance v0, Lu/aly/db;

    const-string v1, "sdk_version"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->r:Lu/aly/db;

    .line 41
    new-instance v0, Lu/aly/db;

    const-string v1, "channel"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->s:Lu/aly/db;

    .line 42
    new-instance v0, Lu/aly/db;

    const-string v1, "wrapper_type"

    invoke-direct {v0, v1, v3, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->t:Lu/aly/db;

    .line 43
    new-instance v0, Lu/aly/db;

    const-string v1, "wrapper_version"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->u:Lu/aly/db;

    .line 44
    new-instance v0, Lu/aly/db;

    const-string v1, "vertical_type"

    const/16 v6, 0xa

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->v:Lu/aly/db;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ao;->w:Ljava/util/Map;

    .line 48
    sget-object v0, Lu/aly/ao;->w:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/ao$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/ao$b;-><init>(Lu/aly/ao$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lu/aly/ao;->w:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/ao$d;

    invoke-direct {v6, v7}, Lu/aly/ao$d;-><init>(Lu/aly/ao$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ao$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 164
    sget-object v1, Lu/aly/ao$e;->a:Lu/aly/ao$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "key"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lu/aly/ao$e;->b:Lu/aly/ao$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "version"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lu/aly/ao$e;->c:Lu/aly/ao$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "version_index"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lu/aly/ao$e;->d:Lu/aly/ao$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "package_name"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lu/aly/ao$e;->e:Lu/aly/ao$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "sdk_type"

    new-instance v8, Lu/aly/cs;

    const-class v9, Lu/aly/bk;

    const/16 v10, 0x10

    invoke-direct {v8, v10, v9}, Lu/aly/cs;-><init>(BLjava/lang/Class;)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lu/aly/ao$e;->f:Lu/aly/ao$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "sdk_version"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lu/aly/ao$e;->g:Lu/aly/ao$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "channel"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v2, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lu/aly/ao$e;->h:Lu/aly/ao$e;

    new-instance v2, Lu/aly/ct;

    const-string v6, "wrapper_type"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v6, v4, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lu/aly/ao$e;->i:Lu/aly/ao$e;

    new-instance v2, Lu/aly/ct;

    const-string v6, "wrapper_version"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v6, v4, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lu/aly/ao$e;->j:Lu/aly/ao$e;

    new-instance v2, Lu/aly/ct;

    const-string v3, "vertical_type"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v3, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ao;->k:Ljava/util/Map;

    .line 185
    const-class v0, Lu/aly/ao;

    sget-object v1, Lu/aly/ao;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x6

    .line 160
    new-array v1, v1, [Lu/aly/ao$e;

    sget-object v2, Lu/aly/ao$e;->b:Lu/aly/ao$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/ao$e;->c:Lu/aly/ao$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->d:Lu/aly/ao$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->h:Lu/aly/ao$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->i:Lu/aly/ao$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->j:Lu/aly/ao$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/ao;->A:[Lu/aly/ao$e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lu/aly/bk;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lu/aly/ao;-><init>()V

    .line 198
    iput-object p1, p0, Lu/aly/ao;->a:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lu/aly/ao;->e:Lu/aly/bk;

    .line 200
    iput-object p3, p0, Lu/aly/ao;->f:Ljava/lang/String;

    .line 201
    iput-object p4, p0, Lu/aly/ao;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/ao;)V
    .locals 3

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 159
    iput-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x6

    .line 160
    new-array v1, v1, [Lu/aly/ao$e;

    sget-object v2, Lu/aly/ao$e;->b:Lu/aly/ao$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/ao$e;->c:Lu/aly/ao$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->d:Lu/aly/ao$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->h:Lu/aly/ao$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->i:Lu/aly/ao$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/ao$e;->j:Lu/aly/ao$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/ao;->A:[Lu/aly/ao$e;

    .line 208
    iget-byte v0, p1, Lu/aly/ao;->z:B

    iput-byte v0, p0, Lu/aly/ao;->z:B

    .line 209
    invoke-virtual {p1}, Lu/aly/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p1, Lu/aly/ao;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ao;->a:Ljava/lang/String;

    .line 212
    :cond_0
    invoke-virtual {p1}, Lu/aly/ao;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p1, Lu/aly/ao;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ao;->b:Ljava/lang/String;

    .line 215
    :cond_1
    iget v0, p1, Lu/aly/ao;->c:I

    iput v0, p0, Lu/aly/ao;->c:I

    .line 216
    invoke-virtual {p1}, Lu/aly/ao;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p1, Lu/aly/ao;->d:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ao;->d:Ljava/lang/String;

    .line 219
    :cond_2
    invoke-virtual {p1}, Lu/aly/ao;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p1, Lu/aly/ao;->e:Lu/aly/bk;

    iput-object v0, p0, Lu/aly/ao;->e:Lu/aly/bk;

    .line 222
    :cond_3
    invoke-virtual {p1}, Lu/aly/ao;->u()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p1, Lu/aly/ao;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ao;->f:Ljava/lang/String;

    .line 225
    :cond_4
    invoke-virtual {p1}, Lu/aly/ao;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p1, Lu/aly/ao;->g:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ao;->g:Ljava/lang/String;

    .line 228
    :cond_5
    invoke-virtual {p1}, Lu/aly/ao;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p1, Lu/aly/ao;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ao;->h:Ljava/lang/String;

    .line 231
    :cond_6
    invoke-virtual {p1}, Lu/aly/ao;->D()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 232
    iget-object v0, p1, Lu/aly/ao;->i:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/ao;->i:Ljava/lang/String;

    .line 234
    :cond_7
    iget p1, p1, Lu/aly/ao;->j:I

    iput p1, p0, Lu/aly/ao;->j:I

    return-void
.end method

.method static synthetic I()Lu/aly/dl;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->l:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic J()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->m:Lu/aly/db;

    return-object v0
.end method

.method static synthetic K()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->n:Lu/aly/db;

    return-object v0
.end method

.method static synthetic L()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->o:Lu/aly/db;

    return-object v0
.end method

.method static synthetic M()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->p:Lu/aly/db;

    return-object v0
.end method

.method static synthetic N()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->q:Lu/aly/db;

    return-object v0
.end method

.method static synthetic O()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->r:Lu/aly/db;

    return-object v0
.end method

.method static synthetic P()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->s:Lu/aly/db;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->t:Lu/aly/db;

    return-object v0
.end method

.method static synthetic R()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->u:Lu/aly/db;

    return-object v0
.end method

.method static synthetic S()Lu/aly/db;
    .locals 1

    .line 32
    sget-object v0, Lu/aly/ao;->v:Lu/aly/db;

    return-object v0
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 635
    :try_start_0
    iput-byte v0, p0, Lu/aly/ao;->z:B

    .line 636
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ao;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 638
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/ao;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 628
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 447
    iget-object v0, p0, Lu/aly/ao;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lu/aly/ao;->i:Ljava/lang/String;

    return-object v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 466
    iput-object v0, p0, Lu/aly/ao;->i:Ljava/lang/String;

    return-void
.end method

.method public D()Z
    .locals 1

    .line 471
    iget-object v0, p0, Lu/aly/ao;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()I
    .locals 1

    .line 481
    iget v0, p0, Lu/aly/ao;->j:I

    return v0
.end method

.method public F()V
    .locals 2

    .line 491
    iget-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ao;->z:B

    return-void
.end method

.method public G()Z
    .locals 2

    .line 496
    iget-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public H()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lu/aly/ao;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'key\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    iget-object v0, p0, Lu/aly/ao;->e:Lu/aly/bk;

    if-nez v0, :cond_1

    .line 613
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_1
    iget-object v0, p0, Lu/aly/ao;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 616
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'sdk_version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_2
    iget-object v0, p0, Lu/aly/ao;->g:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 619
    new-instance v0, Lu/aly/dh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'channel\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public a()Lu/aly/ao;
    .locals 1

    .line 238
    new-instance v0, Lu/aly/ao;

    invoke-direct {v0, p0}, Lu/aly/ao;-><init>(Lu/aly/ao;)V

    return-object v0
.end method

.method public a(I)Lu/aly/ao;
    .locals 0

    .line 310
    iput p1, p0, Lu/aly/ao;->c:I

    const/4 p1, 0x1

    .line 311
    invoke-virtual {p0, p1}, Lu/aly/ao;->c(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ao;
    .locals 0

    .line 262
    iput-object p1, p0, Lu/aly/ao;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/bk;)Lu/aly/ao;
    .locals 0

    .line 365
    iput-object p1, p0, Lu/aly/ao;->e:Lu/aly/bk;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 508
    sget-object v0, Lu/aly/ao;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->b(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Lu/aly/ao;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/ao;
    .locals 0

    .line 286
    iput-object p1, p0, Lu/aly/ao;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lu/aly/ao;->d(I)Lu/aly/ao$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lu/aly/ao;->a:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lu/aly/ao;->b:Ljava/lang/String;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {p0, v1}, Lu/aly/ao;->c(Z)V

    .line 246
    iput v1, p0, Lu/aly/ao;->c:I

    .line 247
    iput-object v0, p0, Lu/aly/ao;->d:Ljava/lang/String;

    .line 248
    iput-object v0, p0, Lu/aly/ao;->e:Lu/aly/bk;

    .line 249
    iput-object v0, p0, Lu/aly/ao;->f:Ljava/lang/String;

    .line 250
    iput-object v0, p0, Lu/aly/ao;->g:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lu/aly/ao;->h:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lu/aly/ao;->i:Ljava/lang/String;

    .line 253
    invoke-virtual {p0, v1}, Lu/aly/ao;->j(Z)V

    .line 254
    iput v1, p0, Lu/aly/ao;->j:I

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 512
    sget-object v0, Lu/aly/ao;->w:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dg;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dp;

    invoke-interface {v0}, Lu/aly/dp;->b()Lu/aly/do;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/do;->a(Lu/aly/dg;Lu/aly/ch;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 301
    iput-object p1, p0, Lu/aly/ao;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lu/aly/ao;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/ao;
    .locals 0

    .line 485
    iput p1, p0, Lu/aly/ao;->j:I

    const/4 p1, 0x1

    .line 486
    invoke-virtual {p0, p1}, Lu/aly/ao;->j(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/ao;
    .locals 0

    .line 333
    iput-object p1, p0, Lu/aly/ao;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 2

    .line 325
    iget-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ao;->z:B

    return-void
.end method

.method public d(I)Lu/aly/ao$e;
    .locals 0

    .line 504
    invoke-static {p1}, Lu/aly/ao$e;->a(I)Lu/aly/ao$e;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lu/aly/ao;
    .locals 0

    .line 389
    iput-object p1, p0, Lu/aly/ao;->f:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lu/aly/ao;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 348
    iput-object p1, p0, Lu/aly/ao;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Lu/aly/ao;
    .locals 0

    .line 413
    iput-object p1, p0, Lu/aly/ao;->g:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lu/aly/ao;->e:Lu/aly/bk;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 272
    iget-object v0, p0, Lu/aly/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lu/aly/ao;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lu/aly/ao;
    .locals 0

    .line 437
    iput-object p1, p0, Lu/aly/ao;->h:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lu/aly/ao;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Lu/aly/ao;
    .locals 0

    .line 461
    iput-object p1, p0, Lu/aly/ao;->i:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lu/aly/ao;->a()Lu/aly/ao;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 428
    iput-object p1, p0, Lu/aly/ao;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lu/aly/ao;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 452
    iput-object p1, p0, Lu/aly/ao;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 476
    iput-object p1, p0, Lu/aly/ao;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 296
    iget-object v0, p0, Lu/aly/ao;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()I
    .locals 1

    .line 306
    iget v0, p0, Lu/aly/ao;->c:I

    return v0
.end method

.method public j(Z)V
    .locals 2

    .line 500
    iget-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/ao;->z:B

    return-void
.end method

.method public k()V
    .locals 2

    .line 316
    iget-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/ao;->z:B

    return-void
.end method

.method public l()Z
    .locals 2

    .line 321
    iget-byte v0, p0, Lu/aly/ao;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lu/aly/ao;->d:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lu/aly/ao;->d:Ljava/lang/String;

    return-void
.end method

.method public o()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lu/aly/ao;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Lu/aly/bk;
    .locals 1

    .line 357
    iget-object v0, p0, Lu/aly/ao;->e:Lu/aly/bk;

    return-object v0
.end method

.method public q()V
    .locals 1

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lu/aly/ao;->e:Lu/aly/bk;

    return-void
.end method

.method public r()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lu/aly/ao;->e:Lu/aly/bk;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lu/aly/ao;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 394
    iput-object v0, p0, Lu/aly/ao;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "key:"

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v1, p0, Lu/aly/ao;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 524
    :cond_0
    iget-object v1, p0, Lu/aly/ao;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :goto_0
    invoke-virtual {p0}, Lu/aly/ao;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v1, p0, Lu/aly/ao;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 533
    :cond_1
    iget-object v1, p0, Lu/aly/ao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lu/aly/ao;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version_index:"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v1, p0, Lu/aly/ao;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    :cond_3
    invoke-virtual {p0}, Lu/aly/ao;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", "

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "package_name:"

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v1, p0, Lu/aly/ao;->d:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 549
    :cond_4
    iget-object v1, p0, Lu/aly/ao;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    const-string v1, ", "

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_type:"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v1, p0, Lu/aly/ao;->e:Lu/aly/bk;

    if-nez v1, :cond_6

    const-string v1, "null"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 558
    :cond_6
    iget-object v1, p0, Lu/aly/ao;->e:Lu/aly/bk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v1, ", "

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sdk_version:"

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v1, p0, Lu/aly/ao;->f:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "null"

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 566
    :cond_7
    iget-object v1, p0, Lu/aly/ao;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v1, ", "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "channel:"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Lu/aly/ao;->g:Ljava/lang/String;

    if-nez v1, :cond_8

    const-string v1, "null"

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 574
    :cond_8
    iget-object v1, p0, Lu/aly/ao;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :goto_5
    invoke-virtual {p0}, Lu/aly/ao;->A()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, ", "

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_type:"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Lu/aly/ao;->h:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string v1, "null"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 583
    :cond_9
    iget-object v1, p0, Lu/aly/ao;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lu/aly/ao;->D()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, ", "

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "wrapper_version:"

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p0, Lu/aly/ao;->i:Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, "null"

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 593
    :cond_b
    iget-object v1, p0, Lu/aly/ao;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lu/aly/ao;->G()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, ", "

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "vertical_type:"

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget v1, p0, Lu/aly/ao;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, ")"

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lu/aly/ao;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lu/aly/ao;->g:Ljava/lang/String;

    return-object v0
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Lu/aly/ao;->g:Ljava/lang/String;

    return-void
.end method

.method public x()Z
    .locals 1

    .line 423
    iget-object v0, p0, Lu/aly/ao;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lu/aly/ao;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 442
    iput-object v0, p0, Lu/aly/ao;->h:Ljava/lang/String;

    return-void
.end method
