.class public Lu/aly/z;
.super Ljava/lang/Object;
.source "SessionTracker.java"


# static fields
.field private static final a:Ljava/lang/String; = "session_start_time"

.field private static final b:Ljava/lang/String; = "session_end_time"

.field private static final c:Ljava/lang/String; = "session_id"

.field private static final f:Ljava/lang/String; = "activities"

.field private static g:Ljava/lang/String;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a_start_time"

    .line 28
    iput-object v0, p0, Lu/aly/z;->d:Ljava/lang/String;

    const-string v0, "a_end_time"

    .line 29
    iput-object v0, p0, Lu/aly/z;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 7

    .line 177
    invoke-static {p1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object v0

    .line 178
    invoke-virtual {p0, p1}, Lu/aly/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p0, p1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/aj;

    move-result-object p1

    .line 182
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "session_id"

    .line 184
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "session_start_time"

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "session_end_time"

    const-wide/16 v3, 0x0

    .line 186
    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "a_start_time"

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {p2, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "a_end_time"

    .line 188
    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v0, p1}, Lu/aly/l;->a(Lu/aly/q;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    check-cast p1, Lu/aly/aj;

    invoke-virtual {v0, p1}, Lu/aly/l;->a(Lu/aly/q;)V

    :goto_0
    return-object v1
.end method

.method private a(Landroid/content/SharedPreferences;)V
    .locals 2

    .line 86
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "session_start_time"

    .line 88
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session_end_time"

    .line 89
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_start_time"

    .line 90
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_end_time"

    .line 91
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "activities"

    const-string v1, ""

    .line 92
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private b(Landroid/content/SharedPreferences;)Z
    .locals 9

    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    .line 159
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "a_end_time"

    .line 160
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long p1, v3, v1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sub-long v1, v7, v3

    .line 164
    sget-wide v3, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    const-string p1, "MobclickAgent"

    const-string v1, "onResume called before onPause"

    .line 165
    invoke-static {p1, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p1, 0x0

    sub-long v1, v7, v5

    .line 169
    sget-wide v3, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 253
    sget-object v0, Lu/aly/z;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    invoke-static {p0}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lu/aly/z;->g:Ljava/lang/String;

    .line 256
    :cond_0
    sget-object p0, Lu/aly/z;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lu/aly/aj;
    .locals 15

    .line 35
    invoke-static/range {p1 .. p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "session_id"

    const/4 v2, 0x0

    .line 37
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const-string v2, "session_start_time"

    const-wide/16 v3, 0x0

    .line 41
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "session_end_time"

    .line 42
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-eqz v2, :cond_2

    sub-long v9, v7, v5

    .line 47
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    const-wide/32 v13, 0x5265c00

    cmp-long v2, v11, v13

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v9

    .line 52
    :cond_2
    :goto_0
    new-instance v2, Lu/aly/aj;

    invoke-direct {v2}, Lu/aly/aj;-><init>()V

    .line 54
    invoke-virtual {v2, v1}, Lu/aly/aj;->a(Ljava/lang/String;)Lu/aly/bl;

    .line 55
    invoke-virtual {v2, v5, v6}, Lu/aly/aj;->a(J)Lu/aly/bl;

    .line 56
    invoke-virtual {v2, v7, v8}, Lu/aly/aj;->b(J)Lu/aly/bl;

    .line 57
    invoke-virtual {v2, v3, v4}, Lu/aly/aj;->c(J)Lu/aly/bl;

    .line 59
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->getLocation()[D

    move-result-object v1

    if-eqz v1, :cond_4

    .line 61
    new-instance v10, Lu/aly/be;

    const/4 v11, 0x0

    aget-wide v4, v1, v11

    const/4 v12, 0x1

    aget-wide v6, v1, v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lu/aly/be;-><init>(DDJ)V

    .line 62
    invoke-virtual {v2}, Lu/aly/aj;->y()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {v2, v10}, Lu/aly/aj;->a(Lu/aly/be;)V

    goto :goto_1

    .line 65
    :cond_3
    new-array v1, v12, [Lu/aly/be;

    aput-object v10, v1, v11

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lu/aly/aj;->b(Ljava/util/List;)Lu/aly/bl;

    .line 69
    :cond_4
    :goto_1
    invoke-static/range {p1 .. p1}, Lu/aly/ac;->a(Landroid/content/Context;)Lu/aly/bm;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 71
    invoke-virtual {v2, v1}, Lu/aly/aj;->a(Lu/aly/bm;)Lu/aly/bl;

    .line 74
    :cond_5
    invoke-static {v0}, Lu/aly/ad;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 76
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 77
    invoke-virtual {v2, v1}, Lu/aly/aj;->a(Ljava/util/List;)Lu/aly/bl;

    :cond_6
    move-object v1, p0

    .line 80
    invoke-direct {v1, v0}, Lu/aly/z;->a(Landroid/content/SharedPreferences;)V

    return-object v2
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 99
    invoke-static {p1}, Lu/aly/bq;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-nez p1, :cond_0

    .line 104
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Appkey is null or empty, Please check AndroidManifest.xml"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu/aly/cd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lu/aly/z;->g:Ljava/lang/String;

    .line 112
    sget-object p1, Lu/aly/z;->g:Ljava/lang/String;

    return-object p1
.end method

.method public c(Landroid/content/Context;)V
    .locals 4

    .line 117
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-direct {p0, v0}, Lu/aly/z;->b(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-direct {p0, p1, v0}, Lu/aly/z;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobclickAgent"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "session_id"

    const/4 v1, 0x0

    .line 126
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "a_start_time"

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_end_time"

    const-wide/16 v2, 0x0

    .line 129
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 130
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "MobclickAgent"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extend current session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 5

    .line 136
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "a_start_time"

    const-wide/16 v1, 0x0

    .line 141
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 143
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    const-string p1, "MobclickAgent"

    const-string v0, "onPause called before onResume"

    .line 144
    invoke-static {p1, v0}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 148
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "a_start_time"

    .line 150
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "a_end_time"

    .line 151
    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v0, "session_end_time"

    .line 152
    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 9

    .line 204
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "session_id"

    const/4 v3, 0x0

    .line 209
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v2, "a_start_time"

    const-wide/16 v3, 0x0

    .line 214
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v2, "a_end_time"

    .line 215
    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    cmp-long v0, v7, v3

    if-nez v0, :cond_2

    const/4 v1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lu/aly/z;->d(Landroid/content/Context;)V

    .line 223
    :cond_2
    invoke-static {p1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object v0

    .line 224
    invoke-virtual {p0, p1}, Lu/aly/z;->a(Landroid/content/Context;)Lu/aly/aj;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {v0, p1}, Lu/aly/l;->b(Lu/aly/q;)V

    :cond_3
    return v1
.end method

.method public f(Landroid/content/Context;)V
    .locals 6

    .line 233
    invoke-static {p1}, Lu/aly/x;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, p1}, Lu/aly/z;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_id"

    .line 242
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_start_time"

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "session_end_time"

    const-wide/16 v2, 0x0

    .line 244
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_start_time"

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "a_end_time"

    .line 246
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 248
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "MobclickAgent"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restart session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lu/aly/br;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
