.class public final enum Lcom/miui/smsextra/http/utils/ServiceType;
.super Ljava/lang/Enum;
.source "ServiceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/smsextra/http/utils/ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/smsextra/http/utils/ServiceType;

.field public static final enum DOWNLOAD:Lcom/miui/smsextra/http/utils/ServiceType;

.field public static final enum STRING:Lcom/miui/smsextra/http/utils/ServiceType;

.field public static final enum UNKNOWN:Lcom/miui/smsextra/http/utils/ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/miui/smsextra/http/utils/ServiceType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/smsextra/http/utils/ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/smsextra/http/utils/ServiceType;->STRING:Lcom/miui/smsextra/http/utils/ServiceType;

    .line 10
    new-instance v0, Lcom/miui/smsextra/http/utils/ServiceType;

    const-string v1, "DOWNLOAD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/smsextra/http/utils/ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/smsextra/http/utils/ServiceType;->DOWNLOAD:Lcom/miui/smsextra/http/utils/ServiceType;

    .line 11
    new-instance v0, Lcom/miui/smsextra/http/utils/ServiceType;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/smsextra/http/utils/ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/smsextra/http/utils/ServiceType;->UNKNOWN:Lcom/miui/smsextra/http/utils/ServiceType;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/miui/smsextra/http/utils/ServiceType;

    sget-object v1, Lcom/miui/smsextra/http/utils/ServiceType;->STRING:Lcom/miui/smsextra/http/utils/ServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/smsextra/http/utils/ServiceType;->DOWNLOAD:Lcom/miui/smsextra/http/utils/ServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/smsextra/http/utils/ServiceType;->UNKNOWN:Lcom/miui/smsextra/http/utils/ServiceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/smsextra/http/utils/ServiceType;->$VALUES:[Lcom/miui/smsextra/http/utils/ServiceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/smsextra/http/utils/ServiceType;
    .locals 1

    .line 8
    const-class v0, Lcom/miui/smsextra/http/utils/ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/smsextra/http/utils/ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/miui/smsextra/http/utils/ServiceType;
    .locals 1

    .line 8
    sget-object v0, Lcom/miui/smsextra/http/utils/ServiceType;->$VALUES:[Lcom/miui/smsextra/http/utils/ServiceType;

    invoke-virtual {v0}, [Lcom/miui/smsextra/http/utils/ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/smsextra/http/utils/ServiceType;

    return-object v0
.end method
