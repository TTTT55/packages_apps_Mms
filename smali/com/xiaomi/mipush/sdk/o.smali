.class public final Lcom/xiaomi/mipush/sdk/o;
.super Ljava/lang/Object;
.source "AssemblePushUtils.java"


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/bd;
    .locals 3

    .line 37
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 39
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.huawei.hwid"

    const-string v2, "com.huawei.hms.core.service.HMSCoreService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x80

    .line 40
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    invoke-static {}, Lcom/xiaomi/mipush/sdk/o;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    sget-object p0, Lcom/xiaomi/mipush/sdk/bd;->a:Lcom/xiaomi/mipush/sdk/bd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 48
    :cond_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    return-object p0

    .line 46
    :catch_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/bd;->e:Lcom/xiaomi/mipush/sdk/bd;

    return-object p0
.end method

.method private static a()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    const-string v2, "get"

    const/4 v3, 0x2

    .line 54
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ro.build.hw_emui_api_level"

    aput-object v4, v3, v0

    const-string v4, ""

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    return v5

    :catch_0
    move-exception v1

    .line 62
    invoke-static {v1}, Lcom/xiaomi/b/a/c/b;->a(Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "com.google.android.gms.common.GoogleApiAvailability"

    const-string v1, "getInstance"

    const/4 v2, 0x0

    .line 74
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "isGooglePlayServicesAvailable"

    const/4 v3, 0x1

    .line 75
    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v0, v1, v4}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "com.google.android.gms.common.ConnectionResult"

    const-string v1, "SUCCESS"

    .line 77
    invoke-static {v0, v1}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 79
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 80
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p0, :cond_2

    .line 87
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 88
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 89
    :goto_0
    sput p0, Lcom/xiaomi/mipush/sdk/o;->a:I

    goto :goto_1

    .line 91
    :cond_1
    sput v2, Lcom/xiaomi/mipush/sdk/o;->a:I

    const-string p0, "google service is not avaliable"

    .line 92
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->c(Ljava/lang/String;)V

    .line 95
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "is google service can be used"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/xiaomi/mipush/sdk/o;->a:I

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->c(Ljava/lang/String;)V

    .line 96
    sget p0, Lcom/xiaomi/mipush/sdk/o;->a:I

    if-lez p0, :cond_4

    return v3

    :cond_4
    return v2

    :cond_5
    const-string p0, "google service is not avaliable"

    .line 82
    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->c(Ljava/lang/String;)V

    .line 83
    sput v2, Lcom/xiaomi/mipush/sdk/o;->a:I

    return v2
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "com.xiaomi.assemble.control.COSPushManager"

    const-string v1, "isSupportPush"

    const/4 v2, 0x1

    .line 101
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 103
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 104
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "color os push  is avaliable ? :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->c(Ljava/lang/String;)V

    return v3
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "com.xiaomi.assemble.control.FTOSPushManager"

    const-string v1, "isSupportPush"

    const/4 v2, 0x1

    .line 113
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaomi/b/a/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 116
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "fun touch os push  is avaliable ? :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/b/a/c/b;->c(Ljava/lang/String;)V

    return v3
.end method
