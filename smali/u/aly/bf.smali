.class public Lu/aly/bf;
.super Ljava/lang/Object;
.source "MiscInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/ch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/aly/bf$c;,
        Lu/aly/bf$d;,
        Lu/aly/bf$a;,
        Lu/aly/bf$b;,
        Lu/aly/bf$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Lu/aly/ch<",
        "Lu/aly/bf;",
        "Lu/aly/bf$e;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:I = 0x3

.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lu/aly/bf$e;",
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

.field private static final z:I = 0x2


# instance fields
.field private B:B

.field private C:[Lu/aly/bf$e;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lu/aly/al;

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lu/aly/dl;

    const-string v1, "MiscInfo"

    invoke-direct {v0, v1}, Lu/aly/dl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bf;->l:Lu/aly/dl;

    .line 34
    new-instance v0, Lu/aly/db;

    const-string v1, "time_zone"

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->m:Lu/aly/db;

    .line 35
    new-instance v0, Lu/aly/db;

    const-string v1, "language"

    const/16 v3, 0xb

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->n:Lu/aly/db;

    .line 36
    new-instance v0, Lu/aly/db;

    const-string v1, "country"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v3, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->o:Lu/aly/db;

    .line 37
    new-instance v0, Lu/aly/db;

    const-string v1, "latitude"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v5}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->p:Lu/aly/db;

    .line 38
    new-instance v0, Lu/aly/db;

    const-string v1, "longitude"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v5, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->q:Lu/aly/db;

    .line 39
    new-instance v0, Lu/aly/db;

    const-string v1, "carrier"

    const/4 v6, 0x6

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->r:Lu/aly/db;

    .line 40
    new-instance v0, Lu/aly/db;

    const-string v1, "latency"

    const/4 v6, 0x7

    invoke-direct {v0, v1, v2, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->s:Lu/aly/db;

    .line 41
    new-instance v0, Lu/aly/db;

    const-string v1, "display_name"

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->t:Lu/aly/db;

    .line 42
    new-instance v0, Lu/aly/db;

    const-string v1, "access_type"

    const/16 v6, 0x9

    invoke-direct {v0, v1, v2, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->u:Lu/aly/db;

    .line 43
    new-instance v0, Lu/aly/db;

    const-string v1, "access_subtype"

    const/16 v6, 0xa

    invoke-direct {v0, v1, v3, v6}, Lu/aly/db;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->v:Lu/aly/db;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bf;->w:Ljava/util/Map;

    .line 47
    sget-object v0, Lu/aly/bf;->w:Ljava/util/Map;

    const-class v1, Lu/aly/dq;

    new-instance v6, Lu/aly/bf$b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lu/aly/bf$b;-><init>(Lu/aly/bf$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lu/aly/bf;->w:Ljava/util/Map;

    const-class v1, Lu/aly/dr;

    new-instance v6, Lu/aly/bf$d;

    invoke-direct {v6, v7}, Lu/aly/bf$d;-><init>(Lu/aly/bf$1;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bf$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 165
    sget-object v1, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "time_zone"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "language"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "country"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lu/aly/bf$e;->d:Lu/aly/bf$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "latitude"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lu/aly/bf$e;->e:Lu/aly/bf$e;

    new-instance v6, Lu/aly/ct;

    const-string v7, "longitude"

    new-instance v8, Lu/aly/cu;

    invoke-direct {v8, v5}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v6, v7, v4, v8}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lu/aly/bf$e;->f:Lu/aly/bf$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "carrier"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v4, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lu/aly/bf$e;->g:Lu/aly/bf$e;

    new-instance v5, Lu/aly/ct;

    const-string v6, "latency"

    new-instance v7, Lu/aly/cu;

    invoke-direct {v7, v2}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v5, v6, v4, v7}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lu/aly/bf$e;->h:Lu/aly/bf$e;

    new-instance v2, Lu/aly/ct;

    const-string v5, "display_name"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v5, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lu/aly/bf$e;->i:Lu/aly/bf$e;

    new-instance v2, Lu/aly/ct;

    const-string v5, "access_type"

    new-instance v6, Lu/aly/cs;

    const-class v7, Lu/aly/al;

    const/16 v8, 0x10

    invoke-direct {v6, v8, v7}, Lu/aly/cs;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v5, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lu/aly/bf$e;->j:Lu/aly/bf$e;

    new-instance v2, Lu/aly/ct;

    const-string v5, "access_subtype"

    new-instance v6, Lu/aly/cu;

    invoke-direct {v6, v3}, Lu/aly/cu;-><init>(B)V

    invoke-direct {v2, v5, v4, v6}, Lu/aly/ct;-><init>(Ljava/lang/String;BLu/aly/cu;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bf;->k:Ljava/util/Map;

    .line 186
    const-class v0, Lu/aly/bf;

    sget-object v1, Lu/aly/bf;->k:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/ct;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput-byte v0, p0, Lu/aly/bf;->B:B

    const/16 v1, 0xa

    .line 161
    new-array v1, v1, [Lu/aly/bf$e;

    sget-object v2, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->d:Lu/aly/bf$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->e:Lu/aly/bf$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->f:Lu/aly/bf$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->g:Lu/aly/bf$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->h:Lu/aly/bf$e;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->i:Lu/aly/bf$e;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->j:Lu/aly/bf$e;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/bf;->C:[Lu/aly/bf$e;

    return-void
.end method

.method public constructor <init>(Lu/aly/bf;)V
    .locals 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 160
    iput-byte v0, p0, Lu/aly/bf;->B:B

    const/16 v1, 0xa

    .line 161
    new-array v1, v1, [Lu/aly/bf$e;

    sget-object v2, Lu/aly/bf$e;->a:Lu/aly/bf$e;

    aput-object v2, v1, v0

    sget-object v0, Lu/aly/bf$e;->b:Lu/aly/bf$e;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->c:Lu/aly/bf$e;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->d:Lu/aly/bf$e;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->e:Lu/aly/bf$e;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->f:Lu/aly/bf$e;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->g:Lu/aly/bf$e;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->h:Lu/aly/bf$e;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->i:Lu/aly/bf$e;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    sget-object v0, Lu/aly/bf$e;->j:Lu/aly/bf$e;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    iput-object v1, p0, Lu/aly/bf;->C:[Lu/aly/bf$e;

    .line 196
    iget-byte v0, p1, Lu/aly/bf;->B:B

    iput-byte v0, p0, Lu/aly/bf;->B:B

    .line 197
    iget v0, p1, Lu/aly/bf;->a:I

    iput v0, p0, Lu/aly/bf;->a:I

    .line 198
    invoke-virtual {p1}, Lu/aly/bf;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p1, Lu/aly/bf;->b:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    .line 201
    :cond_0
    invoke-virtual {p1}, Lu/aly/bf;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p1, Lu/aly/bf;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bf;->c:Ljava/lang/String;

    .line 204
    :cond_1
    iget-wide v0, p1, Lu/aly/bf;->d:D

    iput-wide v0, p0, Lu/aly/bf;->d:D

    .line 205
    iget-wide v0, p1, Lu/aly/bf;->e:D

    iput-wide v0, p0, Lu/aly/bf;->e:D

    .line 206
    invoke-virtual {p1}, Lu/aly/bf;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p1, Lu/aly/bf;->f:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bf;->f:Ljava/lang/String;

    .line 209
    :cond_2
    iget v0, p1, Lu/aly/bf;->g:I

    iput v0, p0, Lu/aly/bf;->g:I

    .line 210
    invoke-virtual {p1}, Lu/aly/bf;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p1, Lu/aly/bf;->h:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bf;->h:Ljava/lang/String;

    .line 213
    :cond_3
    invoke-virtual {p1}, Lu/aly/bf;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 214
    iget-object v0, p1, Lu/aly/bf;->i:Lu/aly/al;

    iput-object v0, p0, Lu/aly/bf;->i:Lu/aly/al;

    .line 216
    :cond_4
    invoke-virtual {p1}, Lu/aly/bf;->G()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    iget-object p1, p1, Lu/aly/bf;->j:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/bf;->j:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method static synthetic I()Lu/aly/dl;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->l:Lu/aly/dl;

    return-object v0
.end method

.method static synthetic J()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->m:Lu/aly/db;

    return-object v0
.end method

.method static synthetic K()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->n:Lu/aly/db;

    return-object v0
.end method

.method static synthetic L()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->o:Lu/aly/db;

    return-object v0
.end method

.method static synthetic M()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->p:Lu/aly/db;

    return-object v0
.end method

.method static synthetic N()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->q:Lu/aly/db;

    return-object v0
.end method

.method static synthetic O()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->r:Lu/aly/db;

    return-object v0
.end method

.method static synthetic P()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->s:Lu/aly/db;

    return-object v0
.end method

.method static synthetic Q()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->t:Lu/aly/db;

    return-object v0
.end method

.method static synthetic R()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->u:Lu/aly/db;

    return-object v0
.end method

.method static synthetic S()Lu/aly/db;
    .locals 1

    .line 31
    sget-object v0, Lu/aly/bf;->v:Lu/aly/db;

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

    .line 607
    :try_start_0
    iput-byte v0, p0, Lu/aly/bf;->B:B

    .line 608
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 610
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

    .line 598
    :try_start_0
    new-instance v0, Lu/aly/da;

    new-instance v1, Lu/aly/ds;

    invoke-direct {v1, p1}, Lu/aly/ds;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/da;-><init>(Lu/aly/du;)V

    invoke-virtual {p0, v0}, Lu/aly/bf;->b(Lu/aly/dg;)V
    :try_end_0
    .catch Lu/aly/cn; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 600
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lu/aly/cn;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 422
    iget-object v0, p0, Lu/aly/bf;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Lu/aly/al;
    .locals 1

    .line 436
    iget-object v0, p0, Lu/aly/bf;->i:Lu/aly/al;

    return-object v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 449
    iput-object v0, p0, Lu/aly/bf;->i:Lu/aly/al;

    return-void
.end method

.method public D()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lu/aly/bf;->i:Lu/aly/al;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lu/aly/bf;->j:Ljava/lang/String;

    return-object v0
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lu/aly/bf;->j:Ljava/lang/String;

    return-void
.end method

.method public G()Z
    .locals 1

    .line 478
    iget-object v0, p0, Lu/aly/bf;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    return-void
.end method

.method public a()Lu/aly/bf;
    .locals 1

    .line 222
    new-instance v0, Lu/aly/bf;

    invoke-direct {v0, p0}, Lu/aly/bf;-><init>(Lu/aly/bf;)V

    return-object v0
.end method

.method public a(D)Lu/aly/bf;
    .locals 0

    .line 319
    iput-wide p1, p0, Lu/aly/bf;->d:D

    const/4 p1, 0x1

    .line 320
    invoke-virtual {p0, p1}, Lu/aly/bf;->d(Z)V

    return-object p0
.end method

.method public a(I)Lu/aly/bf;
    .locals 0

    .line 248
    iput p1, p0, Lu/aly/bf;->a:I

    const/4 p1, 0x1

    .line 249
    invoke-virtual {p0, p1}, Lu/aly/bf;->a(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bf;
    .locals 0

    .line 271
    iput-object p1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/al;)Lu/aly/bf;
    .locals 0

    .line 444
    iput-object p1, p0, Lu/aly/bf;->i:Lu/aly/al;

    return-object p0
.end method

.method public a(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 492
    sget-object v0, Lu/aly/bf;->w:Ljava/util/Map;

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
    .locals 2

    .line 263
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public b(D)Lu/aly/bf;
    .locals 0

    .line 342
    iput-wide p1, p0, Lu/aly/bf;->e:D

    const/4 p1, 0x1

    .line 343
    invoke-virtual {p0, p1}, Lu/aly/bf;->e(Z)V

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lu/aly/bf;
    .locals 0

    .line 295
    iput-object p1, p0, Lu/aly/bf;->c:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/co;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lu/aly/bf;->d(I)Lu/aly/bf$e;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 228
    iput v0, p0, Lu/aly/bf;->a:I

    const/4 v1, 0x0

    .line 229
    iput-object v1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lu/aly/bf;->c:Ljava/lang/String;

    .line 231
    invoke-virtual {p0, v0}, Lu/aly/bf;->d(Z)V

    const-wide/16 v2, 0x0

    .line 232
    iput-wide v2, p0, Lu/aly/bf;->d:D

    .line 233
    invoke-virtual {p0, v0}, Lu/aly/bf;->e(Z)V

    .line 234
    iput-wide v2, p0, Lu/aly/bf;->e:D

    .line 235
    iput-object v1, p0, Lu/aly/bf;->f:Ljava/lang/String;

    .line 236
    invoke-virtual {p0, v0}, Lu/aly/bf;->g(Z)V

    .line 237
    iput v0, p0, Lu/aly/bf;->g:I

    .line 238
    iput-object v1, p0, Lu/aly/bf;->h:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lu/aly/bf;->i:Lu/aly/al;

    .line 240
    iput-object v1, p0, Lu/aly/bf;->j:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/dg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cn;
        }
    .end annotation

    .line 496
    sget-object v0, Lu/aly/bf;->w:Ljava/util/Map;

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

    .line 286
    iput-object p1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 244
    iget v0, p0, Lu/aly/bf;->a:I

    return v0
.end method

.method public c(I)Lu/aly/bf;
    .locals 0

    .line 389
    iput p1, p0, Lu/aly/bf;->g:I

    const/4 p1, 0x1

    .line 390
    invoke-virtual {p0, p1}, Lu/aly/bf;->g(Z)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lu/aly/bf;
    .locals 0

    .line 365
    iput-object p1, p0, Lu/aly/bf;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 310
    iput-object p1, p0, Lu/aly/bf;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d(I)Lu/aly/bf$e;
    .locals 0

    .line 488
    invoke-static {p1}, Lu/aly/bf$e;->a(I)Lu/aly/bf$e;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Lu/aly/bf;
    .locals 0

    .line 412
    iput-object p1, p0, Lu/aly/bf;->h:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 2

    .line 254
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 334
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public e(Ljava/lang/String;)Lu/aly/bf;
    .locals 0

    .line 468
    iput-object p1, p0, Lu/aly/bf;->j:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)V
    .locals 2

    .line 357
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public e()Z
    .locals 2

    .line 259
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lu/aly/bf;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic g()Lu/aly/ch;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lu/aly/bf;->a()Lu/aly/bf;

    move-result-object v0

    return-object v0
.end method

.method public g(Z)V
    .locals 2

    .line 404
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lu/aly/ce;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    return-void
.end method

.method public h(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 427
    iput-object p1, p0, Lu/aly/bf;->h:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 459
    iput-object p1, p0, Lu/aly/bf;->i:Lu/aly/al;

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lu/aly/bf;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lu/aly/bf;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j(Z)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Lu/aly/bf;->j:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lu/aly/bf;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    .line 305
    iget-object v0, p0, Lu/aly/bf;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()D
    .locals 2

    .line 315
    iget-wide v0, p0, Lu/aly/bf;->d:D

    return-wide v0
.end method

.method public n()V
    .locals 2

    .line 325
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public o()Z
    .locals 2

    .line 330
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public p()D
    .locals 2

    .line 338
    iget-wide v0, p0, Lu/aly/bf;->e:D

    return-wide v0
.end method

.method public q()V
    .locals 2

    .line 348
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public r()Z
    .locals 2

    .line 353
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lu/aly/bf;->f:Ljava/lang/String;

    return-object v0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Lu/aly/bf;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MiscInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lu/aly/bf;->e()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "time_zone:"

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget v1, p0, Lu/aly/bf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 509
    :goto_0
    invoke-virtual {p0}, Lu/aly/bf;->i()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    const-string v1, ", "

    .line 510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "language:"

    .line 511
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "null"

    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 515
    :cond_2
    iget-object v1, p0, Lu/aly/bf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v1, 0x0

    .line 519
    :cond_3
    invoke-virtual {p0}, Lu/aly/bf;->l()Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    const-string v1, ", "

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "country:"

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v1, p0, Lu/aly/bf;->c:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "null"

    .line 523
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 525
    :cond_5
    iget-object v1, p0, Lu/aly/bf;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v1, 0x0

    .line 529
    :cond_6
    invoke-virtual {p0}, Lu/aly/bf;->o()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    const-string v1, ", "

    .line 530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "latitude:"

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-wide v3, p0, Lu/aly/bf;->d:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 535
    :cond_8
    invoke-virtual {p0}, Lu/aly/bf;->r()Z

    move-result v3

    if-eqz v3, :cond_a

    if-nez v1, :cond_9

    const-string v1, ", "

    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v1, "longitude:"

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-wide v3, p0, Lu/aly/bf;->e:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 541
    :cond_a
    invoke-virtual {p0}, Lu/aly/bf;->u()Z

    move-result v3

    if-eqz v3, :cond_d

    if-nez v1, :cond_b

    const-string v1, ", "

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v1, "carrier:"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v1, p0, Lu/aly/bf;->f:Ljava/lang/String;

    if-nez v1, :cond_c

    const-string v1, "null"

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 547
    :cond_c
    iget-object v1, p0, Lu/aly/bf;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v1, 0x0

    .line 551
    :cond_d
    invoke-virtual {p0}, Lu/aly/bf;->x()Z

    move-result v3

    if-eqz v3, :cond_f

    if-nez v1, :cond_e

    const-string v1, ", "

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v1, "latency:"

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v1, p0, Lu/aly/bf;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 557
    :cond_f
    invoke-virtual {p0}, Lu/aly/bf;->A()Z

    move-result v3

    if-eqz v3, :cond_12

    if-nez v1, :cond_10

    const-string v1, ", "

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v1, "display_name:"

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v1, p0, Lu/aly/bf;->h:Ljava/lang/String;

    if-nez v1, :cond_11

    const-string v1, "null"

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 563
    :cond_11
    iget-object v1, p0, Lu/aly/bf;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v1, 0x0

    .line 567
    :cond_12
    invoke-virtual {p0}, Lu/aly/bf;->D()Z

    move-result v3

    if-eqz v3, :cond_15

    if-nez v1, :cond_13

    const-string v1, ", "

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, "access_type:"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Lu/aly/bf;->i:Lu/aly/al;

    if-nez v1, :cond_14

    const-string v1, "null"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 573
    :cond_14
    iget-object v1, p0, Lu/aly/bf;->i:Lu/aly/al;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5
    const/4 v1, 0x0

    .line 577
    :cond_15
    invoke-virtual {p0}, Lu/aly/bf;->G()Z

    move-result v2

    if-eqz v2, :cond_18

    if-nez v1, :cond_16

    const-string v1, ", "

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v1, "access_subtype:"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Lu/aly/bf;->j:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string v1, "null"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 583
    :cond_17
    iget-object v1, p0, Lu/aly/bf;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_6
    const-string v1, ")"

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lu/aly/bf;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()I
    .locals 1

    .line 385
    iget v0, p0, Lu/aly/bf;->g:I

    return v0
.end method

.method public w()V
    .locals 2

    .line 395
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/ce;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bf;->B:B

    return-void
.end method

.method public x()Z
    .locals 2

    .line 400
    iget-byte v0, p0, Lu/aly/bf;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/ce;->a(BI)Z

    move-result v0

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lu/aly/bf;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x0

    .line 417
    iput-object v0, p0, Lu/aly/bf;->h:Ljava/lang/String;

    return-void
.end method
