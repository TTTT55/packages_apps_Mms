.class final Lcom/android/mms/ui/ft;
.super Ljava/lang/Object;
.source "MessageEditableActivityBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/android/mms/ui/fh;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/fh;)V
    .locals 0

    .line 1342
    iput-object p1, p0, Lcom/android/mms/ui/ft;->a:Lcom/android/mms/ui/fh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/android/mms/ui/ft;->a:Lcom/android/mms/ui/fh;

    invoke-static {v0}, Lcom/android/mms/ui/fh;->h(Lcom/android/mms/ui/fh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/mms/ui/ft;->a:Lcom/android/mms/ui/fh;

    invoke-virtual {v0}, Lcom/android/mms/ui/fh;->finish()V

    :cond_0
    return-void
.end method
