<!-- markdownlint-disable -->

<a href="../src/charm.py#L0"><img align="right" style="float:right;" src="https://img.shields.io/badge/-source-cccccc?style=flat-square"></a>

# <kbd>module</kbd> `charm.py`
Charm jenkins agent.

**Global Variables**
---------------
- **AGENT_RELATION**


---

## <kbd>class</kbd> `JenkinsAgentCharm`
Charm Jenkins agent.

<a href="../src/charm.py#L25"><img align="right" style="float:right;" src="https://img.shields.io/badge/-source-cccccc?style=flat-square"></a>

### <kbd>function</kbd> `__init__`

```python
__init__(*args: Any)
```

Initialize the charm and register event handlers.



**Args:**

 - <b>`args`</b>:  Arguments to initialize the charm base.


---

#### <kbd>property</kbd> app

Application that this unit is part of.

---

#### <kbd>property</kbd> charm_dir

Root directory of the charm as it is running.

---

#### <kbd>property</kbd> config

A mapping containing the charm's config and current values.

---

#### <kbd>property</kbd> meta

Metadata of this charm.

---

#### <kbd>property</kbd> model

Shortcut for more simple access the model.

---

#### <kbd>property</kbd> unit

Unit that this execution is responsible for.



---

<a href="../src/charm.py#L73"><img align="right" style="float:right;" src="https://img.shields.io/badge/-source-cccccc?style=flat-square"></a>

### <kbd>function</kbd> `restart_agent_service`

```python
restart_agent_service() → None
```

Restart the jenkins agent charm.



**Raises:**

 - <b>`RuntimeError`</b>:  when the service fails to properly start.
