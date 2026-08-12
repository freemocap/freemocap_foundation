# Miniature Eye-Camera Module — Vendor Outreach Reference

Status: research scratchpad, Aug 2026. Verify all contacts before sending.
Goal: custom NIR global-shutter camera module, ≤5 mm envelope, eye-tracker geometry.

---

## Tier 1 — Semi-custom module houses (start here)

These will package an existing sensor die into your form factor. Lowest friction, real MOQs.

| Vendor | Contact | Notes |
|---|---|---|
| **Leopard Imaging** (Fremont, CA) | sales@leopardimaging.com · support@leopardimaging.com · (408) 263-0988 · 910 Auburn Ct, Fremont CA 94538 | US-based, English-native, ST + NVIDIA partner. OEM/ODM page: leopardimaging.com/oem-and-odm-services/ . Listed as a DigiKey design-services provider. **Best first call.** |
| **e-con Systems** (Chennai + NA) | sales@e-consystems.com · salesNA@e-consystems.com | e-consystems.com/oem-custom-cameras.asp . Does form-factor, ISP tuning, lens fixation, custom drivers. 20+ yrs, 350+ shipped customer products. |
| **Arducam** | Contact form: arducam.com/contact-arducam/ · OEM forum: forum.arducam.com/c/oem-standalone-camera-modules/11 | Cheapest path to *prototypes*. Supports any sensor, custom form factor, cable length, connector, M7/M12 lens, custom filter/FOV. Publishes full sensor datasheets — rare and useful. |
| **FRAMOS** (Germany + US) | framos.com/services/custom-camera-modules/ (use site form; +49 89 710667-58) | Sensor Module Ecosystem = modular dev path. Strong optical design + IQ tuning. Pricier, more engineering-firm-like. ⚠ The `support@staging.framos.com` address in search results is a staging artifact — do not use. |

## Tier 2 — Ultra-miniature / chip-on-tip specialists

Relevant if you push below ~3 mm. These people build 1–2 mm endoscope cameras daily.

| Vendor | Contact | Notes |
|---|---|---|
| **Precision Optics (POC)** (Gardner, MA) | poci.com/camera-manufacturing/ | US micro-optics + camera manufacturing. Built a 1.6 mm OD distal camera on OV6946. Will do real custom optical design NRE. |
| **ams-OSRAM NanEyeM** | ams-osram.com/products/sensor-solutions/cmos-image-sensors/ams-naneyem-miniature-camera-modules | Complete ~1 mm-class module. Rolling shutter — check whether that kills your use case. |
| **CAMEMAKE** | camemake.com/endoscope-camera-module/ | Shenzhen; stocks OV9734/OV6948/OV6946/OV6930 designs, does customization. |
| **RALCAM** | ralcam-borescope.com | Shenzhen, 11 yrs mini-module focus. |
| **Shenzhen CM Technology** | camera-module.com | Shenzhen HQ + Belgium office — easier EU/US comms than most. |

## Tier 3 — Sensor vendors (go here *after* a module house, or in parallel)

| Vendor | Entry point | Notes |
|---|---|---|
| **OMNIVISION** | ovt.com/contact-sales/ · datasheet + NDA: ovt.com/support/request-a-datasheet | Will likely route you to a distributor at your volume. Ask specifically about **OVM6211-RADA** (eye-tracking SKU) and **OG0VA1B**. |
| **STMicroelectronics** | st.com/en/imaging-and-photonics-solutions/vd56g3.html — local sales rep via site | **VD56G3 / VD55G1 sold as bare die for ultracompact modules.** ST is the most approachable major vendor for small players. Leopard Imaging is a listed ST partner — a good combined ask. |
| **onsemi** | ARX3A0 (VGA GS, 1/10", NIR) via distributor | Backup option; already used in eye-tracking products. |

## Illumination + safety

- **ams-OSRAM**, IR LED / VCSEL for eye-face tracking: ams-osram.com/applications/mobile-wearables/eye-face-hand-tracking
- Eye-safety whitepaper (read before designing): "Eye safety with ams OSRAM IR VCSELs" — look.ams-osram.com
- **850 nm** = higher permissible dose, faint visible red glow. **940 nm** = fully invisible, no blink reflex, lower sensor QE. Pick early; it drives sensor + bandpass filter choice.
- Compliance: **IEC 62471** (LED lamps) or **IEC 60825-1** (if classified as laser/VCSEL). Budget for a test lab.

## Distributors / brokers (datasheet + sample shortcuts)

DigiKey · Mouser · Arrow · Avnet · TrustedParts.com (cross-distributor inventory search) · JAK Electronics (OmniVision)

---

## RFQ spec sheet — fill before contacting anyone

Every vendor above will ask for these. Having them ready cuts weeks.

**Application**
- [ ] Use case: near-eye gaze tracking, head-mounted, research instrument
- [ ] Open-source hardware intent — Y/N, and what you need released (schematic? gerbers? driver only?) ← **ask early, it is a dealbreaker for some**

**Optical**
- [ ] Resolution: ____ (400×400 or VGA is usually plenty)
- [ ] Shutter: global (strongly preferred) / rolling
- [ ] Frame rate: ____ fps (Pupil Core eye cams ≈ 200 Hz; 120 fps is the common GS ceiling)
- [ ] Spectral: mono, NIR-enhanced; bandpass ____ nm ± ____ nm; IR-cut **removed**
- [ ] FOV: ____ ° diagonal (eye tracking typically 50–110°, depends on camera-to-eye distance)
- [ ] Focus: fixed; object distance ____ mm (typ. 20–40 mm — this is *macro* range and is the #1 thing generic modules get wrong)
- [ ] Depth of field required: ____ mm

**Mechanical**
- [ ] Module envelope: ____ × ____ × ____ mm (state hard max)
- [ ] Flex cable length: ____ mm; bend/routing constraints
- [ ] Connector type at host end: ____
- [ ] Mounting: adhesive / screw / bezel

**Electrical**
- [ ] Interface: MIPI CSI-2 (____ lanes) / DVP / USB-UVC
- [ ] Host platform: ____ (drives driver-porting NRE — name it explicitly)
- [ ] Supply rails available: ____
- [ ] Power budget: ____ mW
- [ ] Multi-camera sync: hardware trigger / strobe out — **required** for stereo eye + world-cam alignment

**Commercial**
- [ ] Prototype qty: ____ ; Year-1 qty: ____ ; EAU: ____
- [ ] Target unit cost at EAU: $____
- [ ] Ask for: NRE quote, MOQ, tooling cost, sample lead time, driver/ISP tuning scope, whether NRE is amortized per unit

---

## Sequencing

1. **Now:** buy Arducam OV9281 / OV7251 UVC modules off the shelf. Prove the pipeline. Learn your real FOV/focus/framerate numbers before spending NRE.
2. **Parallel:** study EyeTrackVR / OpenIris published hardware (docs.eyetrackvr.dev, github.com/EyeTrackVR/OpenIris) — open board files, active community, direct precedent.
3. **Then:** send the completed RFQ to Leopard Imaging + e-con + Arducam simultaneously. Compare NRE, MOQ, and openness terms.
4. **If <3 mm is a hard requirement:** add Precision Optics and ams-OSRAM NanEyeM to that round.

## Expected numbers (for budgeting)

- Custom module NRE: **$5k–50k**
- MOQ: 500–1000 (semi-custom) → 5000–10000 (full custom)
- EVT samples: 4–8 weeks post-NRE; +3–4 weeks for ISP tuning and DVT revision
- Realistic time to production-quality part: **6–12 months**
- Custom *lens* design (avoid if possible): +$30–80k NRE
- Custom *silicon*: $2M+ — not on the table

## Open question to raise in every first email

> Can the resulting module design be published as open hardware, and can we redistribute the sensor driver?

Answer determines vendor shortlist more than price does.
