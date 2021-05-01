.class public final Lcom/edroid/common/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field static final DEF_DATE_TEMPLATE:Ljava/lang/String; = "yyyy-MM-dd"

.field static final DEF_DATE_TIME_TEMPLATE:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field static final DEF_TIME_TEMPLATE:Ljava/lang/String; = "HH:mm:ss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentTimeMillis()J
    .locals 2

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 46
    invoke-static {p0, p1, v0}, Lcom/edroid/common/utils/TimeUtils;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/edroid/common/utils/TimeUtils;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 63
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(J)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd"

    .line 58
    invoke-static {p0, p1, v0}, Lcom/edroid/common/utils/TimeUtils;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTime(J)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 50
    invoke-static {p0, p1, v0}, Lcom/edroid/common/utils/TimeUtils;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTimeNow()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    .line 31
    invoke-static {v0}, Lcom/edroid/common/utils/TimeUtils;->getDateTimeNow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTimeNow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/edroid/common/utils/TimeUtils;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 39
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDayOfYear()I
    .locals 2

    .line 75
    invoke-static {}, Lcom/edroid/common/utils/TimeUtils;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getHourOfDay()I
    .locals 2

    .line 79
    invoke-static {}, Lcom/edroid/common/utils/TimeUtils;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getLocale()Ljava/util/Locale;
    .locals 1

    .line 20
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(J)Ljava/lang/String;
    .locals 1

    const-string v0, "HH:mm:ss"

    .line 54
    invoke-static {p0, p1, v0}, Lcom/edroid/common/utils/TimeUtils;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeNow()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-static {}, Lcom/edroid/common/utils/TimeUtils;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 71
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
