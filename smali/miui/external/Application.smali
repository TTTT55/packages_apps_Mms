.class public Lmiui/external/Application;
.super Landroid/app/Application;
.source "Application.java"

# interfaces
.implements Lmiui/external/SdkConstants;


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.core"


# instance fields
.field private mApplicationDelegate:Lmiui/external/ApplicationDelegate;

.field private mInitialized:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 52
    invoke-direct {p0}, Lmiui/external/Application;->loadSdk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->initializeSdk()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lmiui/external/Application;->mInitialized:Z

    return-void
.end method

.method private handleGenericError(Ljava/lang/Throwable;)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 127
    :cond_0
    instance-of v0, p1, Ljava/lang/ExceptionInInitializerError;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "miuisdk"

    const-string v1, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support."

    .line 134
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    sget-object p1, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {p1}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    return-void
.end method

.method private handleUnknownError(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "miuisdk"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MIUI SDK encounter errors, please contact miuisdk@xiaomi.com for support. phase: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " code: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object p1, Lmiui/external/SdkConstants$SdkError;->GENERIC:Lmiui/external/SdkConstants$SdkError;

    invoke-static {p1}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    return-void
.end method

.method private initializeSdk()Z
    .locals 8

    const/4 v0, 0x0

    .line 81
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    invoke-static {}, Lmiui/external/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "initialize"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Application;

    aput-object v6, v5, v0

    const-class v6, Ljava/util/Map;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 84
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    aput-object v1, v4, v7

    .line 85
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 83
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "initialize"

    .line 87
    invoke-direct {p0, v2, v1}, Lmiui/external/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return v7

    :catch_0
    move-exception v1

    .line 91
    invoke-direct {p0, v1}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    return v0
.end method

.method private loadSdk()Z
    .locals 5

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-static {}, Lmiui/external/SdkHelper;->isMiuiSystem()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.miui.core"

    const-string v2, "miui"

    const/4 v3, 0x0

    .line 64
    invoke-static {v3, v1, v2}, Lmiui/external/SdkHelper;->getApkPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.core"

    .line 65
    invoke-static {v3, v2}, Lmiui/external/SdkHelper;->getLibPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    const-class v4, Lmiui/external/Application;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v1, v3, v2, v4}, Lmiui/external/SdkLoader;->load(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->NO_SDK:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v1}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 73
    invoke-direct {p0, v1}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    return v0
.end method

.method private startSdk()Z
    .locals 7

    const/4 v0, 0x0

    .line 99
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    invoke-static {}, Lmiui/external/SdkEntranceHelper;->getSdkEntrance()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "start"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/util/Map;

    aput-object v6, v5, v0

    .line 102
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v0

    .line 103
    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 105
    sget-object v1, Lmiui/external/SdkConstants$SdkError;->LOW_SDK_VERSION:Lmiui/external/SdkConstants$SdkError;

    invoke-static {v1}, Lmiui/external/SdkErrorInstrumentation;->handleSdkError(Lmiui/external/SdkConstants$SdkError;)V

    return v0

    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "start"

    .line 108
    invoke-direct {p0, v2, v1}, Lmiui/external/Application;->handleUnknownError(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    return v4

    :catch_0
    move-exception v1

    .line 112
    invoke-direct {p0, v1}, Lmiui/external/Application;->handleGenericError(Ljava/lang/Throwable;)V

    return v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 162
    iget-boolean p1, p0, Lmiui/external/Application;->mInitialized:Z

    if-nez p1, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-direct {p0}, Lmiui/external/Application;->startSdk()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 168
    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;

    move-result-object p1

    iput-object p1, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    .line 169
    iget-object p1, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz p1, :cond_2

    .line 170
    iget-object p1, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {p1, p0}, Lmiui/external/ApplicationDelegate;->attach(Lmiui/external/Application;)V

    :cond_2
    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lmiui/external/Application;->mStarted:Z

    return-void
.end method

.method public final getApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    .line 156
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    return-object v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lmiui/external/Application;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lmiui/external/Application;->superOnCreate()V

    return-void
.end method

.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onLowMemory()V
    .locals 1

    .line 206
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onLowMemory()V

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnLowMemory()V

    return-void
.end method

.method public final onTerminate()V
    .locals 1

    .line 193
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0}, Lmiui/external/ApplicationDelegate;->onTerminate()V

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Lmiui/external/Application;->superOnTerminate()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lmiui/external/Application;->mApplicationDelegate:Lmiui/external/ApplicationDelegate;

    invoke-virtual {v0, p1}, Lmiui/external/ApplicationDelegate;->onTrimMemory(I)V

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/external/Application;->superOnTrimMemory(I)V

    return-void
.end method

.method final superOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method final superOnCreate()V
    .locals 0

    .line 188
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method final superOnLowMemory()V
    .locals 0

    .line 214
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method final superOnTerminate()V
    .locals 0

    .line 201
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method final superOnTrimMemory(I)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    return-void
.end method
